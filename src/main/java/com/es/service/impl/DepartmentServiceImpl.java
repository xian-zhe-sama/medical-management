package com.es.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.dto.Department;
import com.es.mapper.DepartmentMapper;
import com.es.service.DepartmentService;

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
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements DepartmentService {

}
