 package com.es.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.es.entity.Hospitalizations;
import com.es.entity.RestBean;
import com.es.entity.dto.HospitalizationsDTO;
import com.es.service.HospitalizationsService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

 /**
  * <p>
  * 前端控制器
  * </p>
  *
  * @author es
  * @since 2024-04-15
  */
 @RestController
 @RequestMapping("/api/hospitalizations")
 public class HospitalizationsController {
     @Resource
     private HospitalizationsService hospitalizationsService;

     @GetMapping("/getAll")
     public RestBean<IPage<HospitalizationsDTO>> getAllHospitalizations(@RequestParam int currentPage) {
         IPage<HospitalizationsDTO> result = hospitalizationsService.findAllHospitalizationsByPage(currentPage);
         if (result != null) {
             return RestBean.success(result);
         } else {
             return RestBean.failure(500, "未查询到数据");
         }
     }

     @GetMapping("/getByName")
     public RestBean<IPage<HospitalizationsDTO>> getHospitalizationsByName(@RequestParam String name, @RequestParam int currentPage) {
         IPage<HospitalizationsDTO> result = hospitalizationsService.findHospitalizationsByName(name, currentPage);
         if (result != null) {
             return RestBean.success(result);
         } else {
             return RestBean.failure(500, "未查询到数据");
         }
     }

     @PostMapping("/save")
     public RestBean<HospitalizationsDTO> saveHospitalizationsOne(@RequestBody HospitalizationsDTO hospitalizationsDTO) {
         if (hospitalizationsService.saveHospitalizationsOne(hospitalizationsDTO)) {
             return RestBean.success(hospitalizationsDTO);
         } else {
             return RestBean.failure(500, "保存失败");
         }
     }

     @PostMapping("/batchDelete")
     public RestBean<Void> batchDeleteHospitalizationsById(@RequestBody List<Integer> hospitalizationsIds) {
         if (hospitalizationsService.batchDeleteHospitalizationsById(hospitalizationsIds)) {
             return RestBean.success();
         } else {
             return RestBean.failure(500, "删除失败");
         }
     }

     @PostMapping("/deleteById")
     public RestBean<Void> deleteHospitalizationsById(@RequestBody Hospitalizations hospitalizations) {
         if (hospitalizationsService.deleteHospitalizationsById(hospitalizations.getDepartmentId())) {
             return RestBean.success();
         } else {
             return RestBean.failure(500, "删除失败");
         }
     }
 }
