package com.es.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.es.entity.Schedule;
import com.es.entity.RestBean;
import com.es.entity.dto.ScheduleDTO;
import com.es.service.ScheduleService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/schedule")
public class ScheduleController {
    @Resource
    private ScheduleService scheduleService;

    @PostMapping("/save")
    public RestBean<Schedule> saveScheduleOne(@RequestBody Schedule schedule) {
        if (scheduleService.saveScheduleOne(schedule)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "保存失败");
        }
    }

    @GetMapping("/getAll")
    public RestBean<IPage<ScheduleDTO>> findAllScheduleByPage(@RequestParam int currentPage) {
        IPage<ScheduleDTO> allScheduleByPage = scheduleService.findAllScheduleByPage(currentPage);
        if (allScheduleByPage != null) {
            return RestBean.success(allScheduleByPage);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @GetMapping("/getById")
    public RestBean<IPage<ScheduleDTO>> findScheduleById(@RequestParam Integer doctorId,@RequestParam int currentPage) {
        IPage<ScheduleDTO> scheduleById = scheduleService.findScheduleById(doctorId,currentPage);
        if (scheduleById != null) {
            return RestBean.success(scheduleById);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @GetMapping("/getByName")
    public RestBean<IPage<ScheduleDTO>> findScheduleByName(@RequestParam(name = "name") String name,
                                                       @RequestParam(name = "currentPage", defaultValue = "1") int currentPage) {
        IPage<ScheduleDTO> scheduleByName = scheduleService.findScheduleByName(name, currentPage);
        System.out.println("name"+name);
        if (scheduleByName != null) {
            return RestBean.success(scheduleByName);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @PostMapping("/deleteById")
    public RestBean<Void> deleteScheduleById(@RequestBody ScheduleDTO scheduleDTO) {
        if (scheduleService.deleteScheduleById(scheduleDTO.getScheduleId())) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }
    @PostMapping("/batchDelete")
    public RestBean<Void> batchDeleteScheduleById(@RequestBody List<Integer> scheduleIds) {
        if (scheduleService.batchDeleteScheduleById(scheduleIds)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }
}
