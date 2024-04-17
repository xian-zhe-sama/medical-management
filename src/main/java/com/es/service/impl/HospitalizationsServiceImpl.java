package com.es.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.Hospitalizations;
import com.es.entity.dto.DoctorDTO;
import com.es.entity.dto.HospitalizationsDTO;
import com.es.mapper.DoctorMapper;
import com.es.mapper.HospitalizationsMapper;
import com.es.service.HospitalizationsService;
import com.es.util.CacheCleanUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.Resource;
import org.springframework.amqp.core.AmqpTemplate;
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
 * @since 2024-04-15
 */
@Service
public class HospitalizationsServiceImpl extends ServiceImpl<HospitalizationsMapper, Hospitalizations> implements HospitalizationsService {
    @Resource
    private HospitalizationsMapper hospitalizationsMapper;
    @Resource
    StringRedisTemplate stringRedisTemplate;
    @Resource
    ObjectMapper objectMapper;
    @Resource
    CacheCleanUtils cacheCleanUtils;
    private final String cacheKey = "findAllHospitalizationsByPage:*";
    @Override
    public boolean saveHospitalizationsOne(Hospitalizations hospitalizations) {
        boolean isSuccess = this.saveOrUpdate(hospitalizations);
        if (isSuccess) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess;
    }

    @Override
    public boolean deleteHospitalizationsById(Integer hospitalizationsId) {
        boolean isSuccess = this.removeById(hospitalizationsId);
        if (isSuccess) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess;
    }

    @Override
    public boolean batchDeleteHospitalizationsById(List<Integer> hospitalizationsIds) {
        if (hospitalizationsMapper.deleteBatchIds(hospitalizationsIds)>0) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
            return true;
        }
        return false;
    }

    @Override
    public IPage<HospitalizationsDTO> findAllHospitalizationsByPage(int currentPage) {
        String key = "findAllHospitalizationsByPage:" + currentPage + ":" + 10;
        String dataFormRedis = stringRedisTemplate.opsForValue().get(key);
        if (dataFormRedis != null) {
            try {
               return objectMapper.readValue(dataFormRedis, new TypeReference<Page<HospitalizationsDTO>>() {
               });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Page<HospitalizationsDTO> page = new Page<>(currentPage, 10);
        IPage<HospitalizationsDTO> result = baseMapper.findAllHospitalizationWithDepartmentName(page);
        try {
            String resultJson = objectMapper.writeValueAsString(result);
            stringRedisTemplate.opsForValue().set(key, resultJson, 60, TimeUnit.MINUTES);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    @Transactional
    @Override
    public IPage<HospitalizationsDTO> findHospitalizationsByName(String name, int currentPage) {
        if (name != null) {
            Page<HospitalizationsDTO> page = new Page<>(currentPage, 10);
            IPage<HospitalizationsDTO> result= hospitalizationsMapper.findHospitalizationWithDepartmentNameByName(name, page);
            return result;
        }else{
            return findAllHospitalizationsByPage(currentPage);
        }
    }
}
