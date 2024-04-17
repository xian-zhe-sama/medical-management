package com.es.controller;

import com.es.entity.RestBean;
import com.es.entity.Department;
import com.es.service.DepartmentService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/test")
public class TestController {
    @GetMapping("/hello")
    public String test() {
        return "hello world";
    }

    @Resource
    private DepartmentService departmentService;

}
