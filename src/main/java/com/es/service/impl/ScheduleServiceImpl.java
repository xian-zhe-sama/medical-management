package com.es.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.Schedule;
import com.es.entity.Schedule;
import com.es.entity.dto.ScheduleDTO;
import com.es.mapper.ScheduleMapper;
import com.es.mapper.ScheduleMapper;
import com.es.service.ScheduleService;
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
 * @since 2024-04-17
 */
@Service
public class ScheduleServiceImpl extends ServiceImpl<ScheduleMapper, Schedule> implements ScheduleService {
    @Resource
    StringRedisTemplate stringRedisTemplate;
    @Resource
    ObjectMapper objectMapper;

    @Resource
    private ScheduleMapper scheduleMapper;
    @Resource
    CacheCleanUtils cacheCleanUtils;
    private final String cacheKey = "findAllScheduleByPage:*";
    /**
     * 更新或添加医生信息，并清除redis缓存中保存的医生信息。
     * @param schedule
     * @return
     */
    @Override
    public boolean saveScheduleOne(Schedule schedule) {
        boolean isSuccess = saveOrUpdate(schedule);
        if (isSuccess) {
            // 清除 findAllScheduleByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess;
    }


    /**
     * 分页查询医生信息，同时将所属部门名称查询出来。
     *
     * @param currentPage 当前页码，从1开始计数。
     * @return 返回包含当前页医生信息列表的分页对象。
     */
    @Override
    public IPage<ScheduleDTO> findAllScheduleByPage(int currentPage) {
        // 构建Redis中存储的key
        String key = "findAllScheduleByPage:" + currentPage + ":" + 10;
        // 尝试从Redis获取医生信息的分页数据
        String dataFromRedis = stringRedisTemplate.opsForValue().get(key);
        if (dataFromRedis != null) {
            try {
                // 如果Redis中有数据，则直接反序列化返回
                return objectMapper.readValue(dataFromRedis, new TypeReference<Page<ScheduleDTO>>() {
                });
            } catch (JsonProcessingException e) {
                // 日志打印反序列化错误
                e.printStackTrace();
            }
        }
        // 创建医生信息分页对象，设置当前页码和每页记录数
        Page<ScheduleDTO> scheduleIPage = new Page<>(currentPage, 10);
        // 查询数据库，并封装医生信息及所属部门名称
        IPage<ScheduleDTO> result = baseMapper.findAllScheduleWithDepartmentName(scheduleIPage);
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
    public List<ScheduleDTO> findScheduleByDepartmentId(Integer departmentId) {
        return List.of();
    }

    @Override
    public IPage<ScheduleDTO> findScheduleByName(String name, int currentPage) {
        Page<ScheduleDTO> page = new Page<>(currentPage, 10);
        if (name != null&& !name.trim().isEmpty()) {
            IPage<ScheduleDTO> result = scheduleMapper.findScheduleWithDepartmentNameByName(name,page);
            System.out.println(result.getRecords());
            return result;
        }else{
            return findAllScheduleByPage(currentPage);
        }
    }
    @Override
    public IPage<ScheduleDTO> findScheduleById(int doctorId, int currentPage) {
        Page<ScheduleDTO> page = new Page<>(currentPage, 10);
        if (doctorId!=0) {
            IPage<ScheduleDTO> result = scheduleMapper.findScheduleWithDepartmentNameById(doctorId,page);
            System.out.println(result.getRecords());
            return result;
        }else{
            return findAllScheduleByPage(currentPage);
        }
    }

    @Override
    public boolean deleteScheduleById(Integer scheduleId) {
        if (this.removeById(scheduleId)) {
            // 清除 findAllScheduleByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
            return true;
        }
        return false;
    }

    @Transactional
    @Override
    public boolean batchDeleteScheduleById(List<Integer> scheduleIds) {
        if (scheduleMapper.deleteBatchIds(scheduleIds) > 0) {
            // 清除 findAllScheduleByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
            return true;
        }
        return false;
    }
}
