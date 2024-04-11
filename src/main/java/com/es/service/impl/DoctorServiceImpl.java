package com.es.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.dto.Doctor;
import com.es.mapper.DoctorMapper;
import com.es.service.DoctorService;
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
public class DoctorServiceImpl extends ServiceImpl<DoctorMapper, Doctor> implements DoctorService {

}
