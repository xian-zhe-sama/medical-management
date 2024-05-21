package com.es.service.impl;



import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.es.entity.Nurse;
import com.es.entity.dto.NurseDTO;
import com.es.entity.dto.NurseDTO;

import com.es.mapper.NurseMapper;
import com.es.service.NurseService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.Resource;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;


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
public class NurseServiceImpl extends ServiceImpl<NurseMapper, Nurse> implements NurseService {
    @Resource
    StringRedisTemplate stringRedisTemplate;
    @Resource
    ObjectMapper objectMapper;

    @Resource
    AmqpTemplate amqpTemplate;
    @Autowired
    private NurseMapper nurseMapper;


    @Override
    public boolean saveNurseOne(Nurse nurse) {
        boolean isSuccess = saveOrUpdate(nurse);
        if (isSuccess) {
            // 清除 findAllNurseByPage 方法相关的缓存
            String cacheKey = "findAllNurseByPage:*";
            amqpTemplate.convertAndSend("cache.cleaning", cacheKey);
        }
        return isSuccess;
    }

    @Override
    public IPage<NurseDTO> findAllNurseByPage(int currentPage) {
        // 构建Redis中存储的key
        String key = "findAllNurseByPage:" + currentPage + ":" + 10;
        // 尝试从Redis获取护士信息的分页数据
        String dataFromRedis = stringRedisTemplate.opsForValue().get(key);
        if (dataFromRedis != null) {
            try {
                // 如果Redis中有数据，则直接反序列化返回
                return objectMapper.readValue(dataFromRedis, new TypeReference<Page<NurseDTO>>() {
                });
            } catch (JsonProcessingException e) {
                // 日志打印反序列化错误
                e.printStackTrace();
            }
        }
        // 创建护士信息分页对象，设置当前页码和每页记录数
        Page<NurseDTO> nurseIPage = new Page<>(currentPage, 10);
        // 查询数据库，并封装护士信息及所属部门名称
        IPage<NurseDTO> result = baseMapper.findAllNurseWithDepartmentName(nurseIPage);
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
    public IPage<NurseDTO> findDepartmentNurseByPage(int currentPage,int departmentId) {
        // 创建护士信息分页对象，设置当前页码和每页记录数
        Page<NurseDTO> nurseIPage = new Page<>(currentPage, 10);
        // 查询数据库，并封装护士信息及所属部门名称
        IPage<NurseDTO> result = baseMapper.findDepartmentNurseWithDepartmentName(departmentId,nurseIPage);
        return result;
    }

    @Override
    public IPage<NurseDTO> findDepartmentNurseByName(String name,int departmentId, int currentPage) {
        Page<NurseDTO> page = new Page<>(currentPage, 10);
        if (name != null&& !name.trim().isEmpty()) {
            IPage<NurseDTO> result = nurseMapper.findDepartmentNurseWithDepartmentNameByName(name,departmentId,page);
            System.out.println(result.getRecords());
            return result;
        }else{
            return findDepartmentNurseByPage(currentPage,departmentId);
        }
    }

    @Override
    public boolean deleteNurseById(Integer nurseId) {
        if (this.removeById(nurseId)) {
            // 清除 findAllNurseByPage 方法相关的缓存
            String cacheKey = "findAllNurseByPage:*";
            amqpTemplate.convertAndSend("cache.cleaning", cacheKey);
            return true;
        }
        return false;
    }

    @Override
    public boolean batchDeleteNurseById(List<Integer> nurseIds) {
        if (nurseMapper.deleteBatchIds(nurseIds) > 0) {
            // 清除 findAllNurseByPage 方法相关的缓存
            String cacheKey = "findAllNurseByPage:*";
            amqpTemplate.convertAndSend("cache.cleaning", cacheKey);
            return true;
        }
        return false;
    }

    @Override
    public Nurse findNurseById(Integer nurseId) {
        return null;
    }

    @Override
    public IPage<NurseDTO> findNurseByName(String name, int currentPage) {
        Page<NurseDTO> page = new Page<>(currentPage, 10);
        if (name != null&& !name.trim().isEmpty()) {
            IPage<NurseDTO> result = nurseMapper.findNurseWithDepartmentNameByName(name,page);
            System.out.println(result.getRecords());
            return result;
        }else{
            return findAllNurseByPage(currentPage);
        }
    }

    @Override
    public IPage<NurseDTO> findNurseByDepartmentId(Integer departmentId, int currentPage) {
        return null;
    }
}
