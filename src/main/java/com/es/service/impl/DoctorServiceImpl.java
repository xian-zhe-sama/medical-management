package com.es.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.Doctor;
import com.es.entity.dto.DoctorDTO;
import com.es.mapper.DoctorMapper;
import com.es.service.DoctorService;
import com.es.util.CacheCleanUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.Resource;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.relational.core.sql.In;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
@Service
public class DoctorServiceImpl extends ServiceImpl<DoctorMapper, Doctor> implements DoctorService {
    @Resource
    StringRedisTemplate stringRedisTemplate;
    @Resource
    ObjectMapper objectMapper;

    @Resource
    private DoctorMapper doctorMapper;
    @Resource
    CacheCleanUtils cacheCleanUtils;
    private final String cacheKey = "findAllDoctorByPage:*";
    /**
     * 更新或添加医生信息，并清除redis缓存中保存的医生信息。
     * @param doctor
     * @return
     */
    @Override
    public boolean saveDoctorOne(Doctor doctor) {
        boolean isSuccess = saveOrUpdate(doctor);
        if (isSuccess) {
            // 清除 findAllDoctorByPage 方法相关的缓存
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
    public IPage<DoctorDTO> findAllDoctorByPage(int currentPage) {
        // 构建Redis中存储的key
        String key = "findAllDoctorByPage:" + currentPage + ":" + 10;
        // 尝试从Redis获取医生信息的分页数据
        String dataFromRedis = stringRedisTemplate.opsForValue().get(key);
        if (dataFromRedis != null) {
            try {
                // 如果Redis中有数据，则直接反序列化返回
                return objectMapper.readValue(dataFromRedis, new TypeReference<Page<DoctorDTO>>() {
                });
            } catch (JsonProcessingException e) {
                // 日志打印反序列化错误
                e.printStackTrace();
            }
        }
        // 创建医生信息分页对象，设置当前页码和每页记录数
        Page<DoctorDTO> doctorIPage = new Page<>(currentPage, 10);
        // 查询数据库，并封装医生信息及所属部门名称
        IPage<DoctorDTO> result = baseMapper.findAllDoctorWithDepartmentName(doctorIPage);
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
    public List<DoctorDTO> findDoctorByDepartmentId(Integer departmentId) {
        return List.of();
    }

    /**
     * 根据医生ID查找医生信息。
     *
     * @param doctorId 医生的唯一标识ID。
     * @return Doctor 返回查询到的医生对象。如果找不到对应医生，返回null。
     */
    @Override
    public Doctor findDoctorById(Integer doctorId) {
        // 创建查询包装器，并设置查询条件为医生ID等于传入的doctorId
        QueryWrapper<Doctor> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("doctor_id",doctorId);
        // 根据查询条件获取唯一的医生记录
        return this.getOne(queryWrapper);
    }

    @Override
    public IPage<DoctorDTO> findDoctorByName(String name, int currentPage) {
        Page<DoctorDTO> page = new Page<>(currentPage, 10);
        if (name != null&& !name.trim().isEmpty()) {
            IPage<DoctorDTO> result = doctorMapper.findDoctorWithDepartmentNameByName(name,page);
            System.out.println(result.getRecords());
            return result;
        }else{
            return findAllDoctorByPage(currentPage);
        }
    }

    @Override
    public boolean deleteDoctorById(Integer doctorId) {
        if (this.removeById(doctorId)) {
            // 清除 findAllDoctorByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
            return true;
        }
        return false;
    }

    @Transactional
    @Override
    public boolean batchDeleteDoctorById(List<Integer> doctorIds) {
        if (doctorMapper.deleteBatchIds(doctorIds) > 0) {
            // 清除 findAllDoctorByPage 方法相关的缓存
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
            return true;
        }
        return false;
    }
}
