package com.es.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.Department;

import com.es.mapper.DepartmentMapper;
import com.es.service.DepartmentService;

import com.es.util.CacheCleanUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.Resource;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
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
 * @since 2024-04-11
 */
@Service
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements DepartmentService {
    @Resource
    StringRedisTemplate stringRedisTemplate;
    @Resource
    ObjectMapper objectMapper;

    @Resource
    private DepartmentMapper departmentMapper;
    @Resource
    CacheCleanUtils cacheCleanUtils;
    private final String cacheKey = "findAllDepartmentByPage:*";
    @Override
    public boolean saveDepartmentOne(Department department) {
        boolean isSuccess = saveOrUpdate(department);
        if (isSuccess) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess;
    }
    @Override
    public boolean deleteDepartmentById(Integer departmentId) {
        boolean isSuccess = removeById(departmentId);
        if (isSuccess) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess;
    }

    @Override
    public IPage<Department> findAllDepartment(int currentPage) {
        // 构建Redis中存储的key
        String key = "findAllDepartmentByPage:" + currentPage + ":" + 10;
        // 尝试从Redis获取科室信息的分页数据
        String dataFromRedis = stringRedisTemplate.opsForValue().get(key);
        if (dataFromRedis != null) {
            try {
                // 如果Redis中有数据，则直接反序列化返回
                return objectMapper.readValue(dataFromRedis, new TypeReference<Page<Department>>() {
                });
            } catch (JsonProcessingException e) {
                // 日志打印反序列化错误
                e.printStackTrace();
            }
        }
        // 创建科室信息分页对象，设置当前页码和每页记录数
        Page<Department> departmentIPage = new Page<>(currentPage, 10);
        // 查询数据库，并封装科室信息及所属部门名称
        IPage<Department> result = page(departmentIPage);
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
    @Transactional
    @Override
    public boolean batchDeleteDepartmentById(List<Integer> departmentIds) {
        int isSuccess = departmentMapper.deleteBatchIds(departmentIds);
        if (isSuccess>0) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess>0;
    }

    @Override
    public IPage<Department> getDepartmentByName(String name, int currentPage) {
        Page<Department> page = new Page<>(currentPage, 10);
        if (name != null) {
            return page(page, new QueryWrapper<Department>().like("name", name));
        }
        return findAllDepartment(currentPage);
    }
    @Override
    public List<Department> getAllDepartmentByList() {
        return this.list();
    }

}
