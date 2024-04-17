package com.es.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.Medicine;
import com.es.mapper.MedicineMapper;
import com.es.service.MedicineService;
import com.es.util.CacheCleanUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.Resource;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.redis.core.RedisTemplate;
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
public class MedicineServiceImpl extends ServiceImpl<MedicineMapper, Medicine> implements MedicineService {

    @Resource
    MedicineMapper medicineMapper;
    @Resource
    StringRedisTemplate stringRedisTemplate;
    @Resource
    CacheCleanUtils cacheCleanUtils;
    @Resource
    ObjectMapper objectMapper;
    @Qualifier("redisTemplate")
    @Autowired
    private RedisTemplate redisTemplate;
    private final String  cacheKey = "findAllMedicineByPage:*";
    @Override
    public boolean saveMedicineOne(Medicine medicine) {
        boolean isSuccess = saveOrUpdate(medicine);
        if (isSuccess) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess;
    }

    @Override
    public boolean deleteMedicineById(Integer medicineId) {
        boolean isSuccess = removeById(medicineId);
        if (isSuccess) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess;
    }
    @Override
    public IPage<Medicine> findAllMedicineByPage(int currentPage) {
        String key = "findAllMedicineByPage" + currentPage + ":" + 10;
        String dataFormRedis = stringRedisTemplate.opsForValue().get(key);
        if (dataFormRedis != null) {
            try {
                return objectMapper.readValue(dataFormRedis, new TypeReference<Page<Medicine>>() {
                });
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
            Page<Medicine> medicinePage = new Page<>(currentPage, 10);
            IPage<Medicine> result = page(medicinePage);
            try {
                String resultJson = objectMapper.writeValueAsString(result);
                redisTemplate.opsForValue().set(key, resultJson, 60, TimeUnit.MINUTES);
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }

        return result;
    }

    @Override
    public IPage<Medicine> findMedicineByName(String name, int currentPage) {
        Page<Medicine> medicinePage = new Page<>(currentPage, 10);
        if (name != null) {
           return page(medicinePage, new QueryWrapper<Medicine>().like("name", name));
        }
       return findAllMedicineByPage(currentPage);
    }
    @Transactional
    @Override
    public boolean batchDeleteMedicineById(List<Integer> medicineIds) {
        int  count = medicineMapper.deleteBatchIds(medicineIds);
        if (count > 0) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }return count > 0;
    }
}
