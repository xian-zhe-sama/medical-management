package com.es.service.impl;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.Equipment;
import com.es.entity.dto.DoctorDTO;
import com.es.entity.dto.EquipmentDTO;
import com.es.mapper.EquipmentMapper;
import com.es.service.EquipmentService;
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
 * @since 2024-04-16
 */
@Service
public class EquipmentServiceImpl extends ServiceImpl<EquipmentMapper, Equipment> implements EquipmentService {
    @Resource
    StringRedisTemplate stringRedisTemplate;
    @Resource
    ObjectMapper objectMapper;
    @Resource
    CacheCleanUtils cacheCleanUtils;
    @Resource
    private EquipmentMapper equipmentMapper;
    private final String cacheKey = "findAllEquipmentByPage:*";
    @Override
    public boolean saveEquipmentOne(Equipment equipment) {
        boolean isSuccess = saveOrUpdate(equipment);
        if (isSuccess) {
            // 清除 findAllDoctorByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess;
    }

    @Override
    public boolean deleteEquipmentById(Integer equipmentId) {
        if (this.removeById(equipmentId)) {
            // 清除 findAllDoctorByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
            return true;
        }
        return false;
    }
    @Transactional
    @Override
    public boolean batchDeleteEquipmentById(List<Integer> equipmentIds) {
        if (equipmentMapper.deleteBatchIds(equipmentIds) > 0) {
            // 清除 findAllDoctorByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
            return true;
        }
        return false;
    }

    @Override
    public IPage<EquipmentDTO> findAllEquipmentByPage(int currentPage) {
        // 构建Redis中存储的key
        String key = "findAllEquipmentByPage:" + currentPage + ":" + 10;
        // 尝试从Redis获取设备信息的分页数据
        String dataFromRedis = stringRedisTemplate.opsForValue().get(key);
        if (dataFromRedis != null) {
            try {
                // 如果Redis中有数据，则直接反序列化返回
                return objectMapper.readValue(dataFromRedis, new TypeReference<Page<EquipmentDTO>>() {
                });
            } catch (JsonProcessingException e) {
                // 日志打印反序列化错误
                e.printStackTrace();
            }
        }
        // 创建设备信息分页对象，设置当前页码和每页记录数
        Page<EquipmentDTO> equipmentIPage = new Page<>(currentPage, 10);
        // 查询数据库，并封装设备信息及所属部门名称
        IPage<EquipmentDTO> result = baseMapper.findAllEquipmentWithDepartmentName(equipmentIPage);
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
    public IPage<EquipmentDTO> findEquipmentByName(String name, int currentPage) {
        Page<EquipmentDTO> page = new Page<>(currentPage, 10);
        if (name != null&& !name.trim().isEmpty()) {
            IPage<EquipmentDTO> result = equipmentMapper.findEquipmentWithDepartmentNameByName(name,page);
            System.out.println(result.getRecords());
            return result;
        }else{
            return findAllEquipmentByPage(currentPage);
        }
    }
}
