package com.es.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.dto.Medicine;
import com.es.mapper.MedicineMapper;
import com.es.service.MedicineService;
import org.springframework.stereotype.Service;

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

}
