package com.es.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.es.entity.Equipment;
import com.es.entity.Equipment;
import com.es.entity.RestBean;
import com.es.entity.dto.EquipmentDTO;
import com.es.entity.dto.EquipmentDTO;
import com.es.service.EquipmentService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/equipment")
public class EquipmentController {
    @Resource
    private EquipmentService equipmentService;

    @PostMapping("/save")
    public RestBean<Equipment> saveEquipmentOne(@RequestBody Equipment equipment) {
        if (equipmentService.saveEquipmentOne(equipment)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "保存失败");
        }
    }

    @GetMapping("/getAll")
    public RestBean<IPage<EquipmentDTO>> findAllEquipmentByPage(@RequestParam int currentPage) {
        IPage<EquipmentDTO> page = equipmentService.findAllEquipmentByPage(currentPage);
        if (page != null) {
            return RestBean.success(page);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @GetMapping("/getByName")
    public RestBean<IPage<EquipmentDTO>> findEquipmentByName(@RequestParam(name = "name") String name,
                                                       @RequestParam(name = "currentPage", defaultValue = "1") int currentPage) {
        IPage<EquipmentDTO> equipmentByName = equipmentService.findEquipmentByName(name, currentPage);
        System.out.println("name"+name);
        if (equipmentByName != null) {
            return RestBean.success(equipmentByName);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @PostMapping("/deleteById")
    public RestBean<Void> deleteEquipmentById(@RequestBody EquipmentDTO equipmentDTO) {
        if (equipmentService.deleteEquipmentById(equipmentDTO.getEquipmentId())) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }
    @PostMapping("/batchDelete")
    public RestBean<Void> batchDeleteEquipmentById(@RequestBody List<Integer> equipmentIds) {
        if (equipmentService.batchDeleteEquipmentById(equipmentIds)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }
}
