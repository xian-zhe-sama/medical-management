package com.es.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.dto.Patient;
import com.es.mapper.PatientMapper;
import com.es.service.PatientService;

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
public class PatientServiceImpl extends ServiceImpl<PatientMapper, Patient> implements PatientService {

}
