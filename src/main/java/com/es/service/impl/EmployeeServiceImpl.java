package com.es.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.dto.Employee;
import com.es.mapper.EmployeeMapper;
import com.es.service.EmployeeService;
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
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper, Employee> implements EmployeeService {

}
