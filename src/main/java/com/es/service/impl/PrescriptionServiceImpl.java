package com.es.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.dto.Prescription;
import com.es.mapper.PrescriptionMapper;
import com.es.service.PrescriptionService;
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
public class PrescriptionServiceImpl extends ServiceImpl<PrescriptionMapper, Prescription> implements PrescriptionService {

}
