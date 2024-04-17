package com.es.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.es.entity.Nurse;
import com.es.entity.RestBean;
import com.es.entity.dto.NurseDTO;
import com.es.service.NurseService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/nurse")
public class NurseController {
    @Resource
    private NurseService nurseService;

    @GetMapping("/test")
    public String test(){
        System.out.println("测试成功");
        return "测试成功";
    }

    @PostMapping("/save")
    public RestBean<Nurse> saveNurseOne(@RequestBody Nurse nurse) {
        if (nurseService.saveNurseOne(nurse)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "保存失败");
        }
    }

    @GetMapping("/getAll")
    public RestBean<IPage<NurseDTO>> findAllNurseByPage(@RequestParam int currentPage) {
        IPage<NurseDTO> allNurseByPage = nurseService.findAllNurseByPage(currentPage);
        if (allNurseByPage != null) {
            return RestBean.success(allNurseByPage);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @GetMapping("/getById")
    public RestBean<Nurse> findNurseById(@RequestBody Integer nurseId) {
        Nurse nurseById = nurseService.findNurseById(nurseId);
        if (nurseById != null) {
            return RestBean.success(nurseById);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @GetMapping("/getByName")
    public RestBean<IPage<NurseDTO>> findNurseByName(@RequestParam(name = "name") String name,
                                                       @RequestParam(name = "currentPage", defaultValue = "1") int currentPage) {
        IPage<NurseDTO> nurseByName = nurseService.findNurseByName(name, currentPage);
        System.out.println("name"+name);
        if (nurseByName != null) {
            return RestBean.success(nurseByName);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @PostMapping("/deleteById")
    public RestBean<Void> deleteNurseById(@RequestBody NurseDTO nurseDTO) {
        if (nurseService.deleteNurseById(nurseDTO.getNurseId())) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }
    @PostMapping("/batchDelete")
    public RestBean<Void> batchDeleteNurseById(@RequestBody List<Integer> nurseIds) {
        if (nurseService.batchDeleteNurseById(nurseIds)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }
}
