package com.es.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.es.entity.RestBean;
import com.es.entity.Department;
import com.es.service.DepartmentService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/department")
public class DepartmentController {
    @Resource
    private DepartmentService departmentService;

    @GetMapping("/getAll")
    public RestBean<IPage<Department>> findAllDepartment(@RequestParam int currentPage) {
        IPage<Department> departments = departmentService.findAllDepartment(currentPage);
        if (departments == null) {
            return RestBean.failure(500, "没有找到任何部门");
        }
        return RestBean.success(departments);
    }

    @PostMapping("/save")
    public RestBean<Department> saveDepartmentOne(@RequestBody Department department) {
        boolean save = departmentService.saveDepartmentOne(department);
        if (!save) {
            return RestBean.failure(500, "保存失败");
        }
        return RestBean.success(department);
    }

    @PostMapping("/deleteById")
    public RestBean<Void> deleteDepartmentById(@RequestBody Department department) {
        boolean delete = departmentService.deleteDepartmentById(department.getDepartmentId());
        if (!delete) {
            return RestBean.failure(500, "删除失败");
        }
        return RestBean.success();
    }

    @PostMapping("/batchDelete")
    public RestBean<Void> batchDeleteDepartmentById(@RequestBody List<Integer> departmentIds) {
        for (Integer departmentId : departmentIds) {
            System.out.println(departmentId);
        }
        boolean delete = departmentService.batchDeleteDepartmentById(departmentIds);
        if (!delete) {
            return RestBean.failure(500, "批量删除失败");
        }
        return RestBean.success();
    }
    @GetMapping("/getDepartmentByName")
    public RestBean<IPage<Department>> getDepartmentByName(@RequestParam String name,@RequestParam int currentPage) {
        IPage<Department> departments = departmentService.getDepartmentByName(name,currentPage);
        if (departments == null) {
            return RestBean.failure(500, "没有找到任何部门");
        }
        return RestBean.success(departments);
    }
    @GetMapping("/list")
    public RestBean<List<Department>> getAllDepartmentByList() {
        System.out.println("getlist");
        List<Department> departments = departmentService.getAllDepartmentByList();
        if (departments != null) {
            return RestBean.success(departments);
        }
       return RestBean.failure(500,"没有找到任何部门");
    }
}
