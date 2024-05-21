package com.es.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.es.entity.Pharmacist;
import com.es.entity.RestBean;
import com.es.service.PharmacistService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author es
 * @since 2024-04-21
 */
@RestController
@RequestMapping("/api/pharmacist")
public class PharmacistController {
    @Resource
    private PharmacistService pharmacistService;

    @PostMapping("/save")
    public RestBean<Pharmacist> savePharmacistOne(@RequestBody Pharmacist  pharmacist) {
        if (pharmacistService.savePharmacistOne( pharmacist)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "保存失败");
        }
    }

    @GetMapping("/getAll")
    public RestBean<IPage<Pharmacist>> findAllPharmacistByPage(@RequestParam int currentPage) {
        IPage<Pharmacist> allPharmacistByPage = pharmacistService.findAllPharmacistByPage(currentPage);
        if (allPharmacistByPage != null) {
            return RestBean.success(allPharmacistByPage);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @GetMapping("/getById")
    public RestBean<Pharmacist> findPharmacistById(@RequestParam Integer accountId) {
        Pharmacist  pharmacistById = pharmacistService.findPharmacistById(accountId);
        System.out.println("accountId"+accountId);
        if ( pharmacistById != null) {
            return RestBean.success( pharmacistById);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @GetMapping("/getByName")
    public RestBean<IPage<Pharmacist>> findPharmacistByName(@RequestParam(name = "name") String name,
                                                       @RequestParam(name = "currentPage", defaultValue = "1") int currentPage) {
        IPage<Pharmacist>  pharmacistByName = pharmacistService.findPharmacistByName(name, currentPage);
        System.out.println("name"+name);
        if ( pharmacistByName != null) {
            return RestBean.success( pharmacistByName);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @PostMapping("/deleteById")
    public RestBean<Void> deletePharmacistById(@RequestBody Pharmacist  pharmacist) {
        if (pharmacistService.deletePharmacistById( pharmacist.getPharmacistId())) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }
    @PostMapping("/batchDelete")
    public RestBean<Void> batchDeletePharmacistById(@RequestBody List<Integer>  pharmacistIds) {
        if (pharmacistService.batchDeletePharmacistById( pharmacistIds)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }
}
