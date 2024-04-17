package com.es.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.es.entity.Department;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
public interface DepartmentService extends IService<Department> {

    public boolean deleteDepartmentById(Integer departmentId);
    public boolean saveDepartmentOne(Department department);
    public IPage<Department> findAllDepartment(int currentPage);
    public boolean batchDeleteDepartmentById(List<Integer> departmentIds);
    public IPage<Department> getDepartmentByName(String name,int currentPage);
    public List<Department> getAllDepartmentByList();
}
