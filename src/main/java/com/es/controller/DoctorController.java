package com.es.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.es.entity.RestBean;
import com.es.entity.Doctor;
import com.es.entity.dto.DoctorDTO;
import com.es.service.DoctorService;
import jakarta.annotation.Resource;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/doctor")
public class DoctorController {
    @Resource
    private DoctorService doctorService;

    @PostMapping("/save")
    public RestBean<Doctor> saveDoctorOne(@RequestBody Doctor doctor) {
        if (doctorService.saveDoctorOne(doctor)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "保存失败");
        }
    }

    @GetMapping("/getAll")
    public RestBean<IPage<DoctorDTO>> findAllDoctorByPage(@RequestParam int currentPage) {
        IPage<DoctorDTO> allDoctorByPage = doctorService.findAllDoctorByPage(currentPage);
        if (allDoctorByPage != null) {
            return RestBean.success(allDoctorByPage);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @GetMapping("/getById")
    public RestBean<Doctor> findDoctorById(@RequestBody Integer doctorId) {
        Doctor doctorById = doctorService.findDoctorById(doctorId);
        if (doctorById != null) {
            return RestBean.success(doctorById);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @GetMapping("/getByName")
    public RestBean<IPage<DoctorDTO>> findDoctorByName(@RequestParam(name = "name") String name,
                                                    @RequestParam(name = "currentPage", defaultValue = "1") int currentPage) {
        IPage<DoctorDTO> doctorByName = doctorService.findDoctorByName(name, currentPage);
        System.out.println("name"+name);
        if (doctorByName != null) {
            return RestBean.success(doctorByName);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @PostMapping("/deleteById")
    public RestBean<Void> deleteDoctorById(@RequestBody DoctorDTO doctorDTO) {
        if (doctorService.deleteDoctorById(doctorDTO.getDoctorId())) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }
    @PostMapping("/batchDelete")
    public RestBean<Void> batchDeleteDoctorById(@RequestBody List<Integer> doctorIds) {
        if (doctorService.batchDeleteDoctorById(doctorIds)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }
}
