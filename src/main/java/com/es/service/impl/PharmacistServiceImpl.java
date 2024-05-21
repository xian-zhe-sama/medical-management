package com.es.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.Pharmacist;
import com.es.mapper.PharmacistMapper;
import com.es.service.PharmacistService;
import com.es.util.CacheCleanUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.Resource;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author es
 * @since 2024-04-21
 */
@Service
public class PharmacistServiceImpl extends ServiceImpl<PharmacistMapper, Pharmacist> implements PharmacistService {
    @Resource
    StringRedisTemplate stringRedisTemplate;
    @Resource
    ObjectMapper objectMapper;

    @Resource
    private PharmacistMapper pharmacistMapper;
    @Resource
    CacheCleanUtils cacheCleanUtils;
    private final String cacheKey = "findAllPharmacistByPage:*";
    /**
     * 更新或添加 药品管理员信息，并清除redis缓存中保存的 药品管理员信息。
     * @param pharmacist
     * @return
     */
    @Override
    public boolean savePharmacistOne(Pharmacist pharmacist) {
        boolean isSuccess = saveOrUpdate(pharmacist);
        if (isSuccess) {
            // 清除 findAllPharmacistByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess;
    }


    /**
     * 分页查询 药品管理员信息，同时将所属部门名称查询出来。
     *
     * @param currentPage 当前页码，从1开始计数。
     * @return 返回包含当前页 药品管理员信息列表的分页对象。
     */
    @Override
    public IPage<Pharmacist > findAllPharmacistByPage(int currentPage) {
        // 构建Redis中存储的key
        String key = "findAllPharmacistByPage:" + currentPage + ":" + 10;
        // 尝试从Redis获取 药品管理员信息的分页数据
        String dataFromRedis = stringRedisTemplate.opsForValue().get(key);
        if (dataFromRedis != null) {
            try {
                // 如果Redis中有数据，则直接反序列化返回
                return objectMapper.readValue(dataFromRedis, new TypeReference<Page<Pharmacist >>() {
                });
            } catch (JsonProcessingException e) {
                // 日志打印反序列化错误
                e.printStackTrace();
            }
        }
        // 创建 药品管理员信息分页对象，设置当前页码和每页记录数
        Page<Pharmacist > pharmacistIPage = new Page<>(currentPage, 10);
        // 查询数据库，并封装 药品管理员信息及所属部门名称
        IPage<Pharmacist > result = page(pharmacistIPage);
        try {
            // 将查询结果序列化，并存储到Redis中，设置过期时间为60分钟
            String resultJson = objectMapper.writeValueAsString(result);
            stringRedisTemplate.opsForValue().set(key, resultJson, 60, TimeUnit.MINUTES);
        } catch (JsonProcessingException e) {
            // 日志打印序列化错误
            e.printStackTrace();
        }
        return result;
    }




    @Override
    public List<Pharmacist > findPharmacistByDepartmentId(Integer departmentId) {
        return List.of();
    }

    /**
     * 根据 药品管理员ID查找 药品管理员信息。
     *
     * @param accountId  药品管理员的唯一标识ID。
     * @return Pharmacist 返回查询到的 药品管理员对象。如果找不到对应 药品管理员，返回null。
     */
    @Override
    public Pharmacist findPharmacistById(Integer accountId) {
        // 创建查询包装器，并设置查询条件为 药品管理员ID等于传入的pharmacistId
        return pharmacistMapper.findPharmacistById(accountId);
        // 根据查询条件获取唯一的 药品管理员记录

    }

    @Override
    public IPage<Pharmacist > findPharmacistByName(String name, int currentPage) {
        Page<Pharmacist > page = new Page<>(currentPage, 10);
        if (name != null&& !name.trim().isEmpty()) {
            return page(page, new QueryWrapper<Pharmacist>().like("name", name));
        }else{
            return findAllPharmacistByPage(currentPage);
        }
    }

    @Override
    public boolean deletePharmacistById(Integer pharmacistId) {
        if (this.removeById(pharmacistId)) {
            // 清除 findAllPharmacistByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
            return true;
        }
        return false;
    }

    @Transactional
    @Override
    public boolean batchDeletePharmacistById(List<Integer> pharmacistIds) {
        if (pharmacistMapper.deleteBatchIds(pharmacistIds) > 0) {
            // 清除 findAllPharmacistByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
            return true;
        }
        return false;
    }
}
