package com.es.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.es.entity.Medicine;
import com.es.entity.RestBean;
import com.es.service.MedicineService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/medicine")
public class MedicineController {
    @Resource
    private MedicineService medicineService;

    @GetMapping("/getAll")
    public RestBean<IPage<Medicine>> getAllMedicine(@RequestParam int currentPage) {
        IPage<Medicine> allMedicineByPage = medicineService.findAllMedicineByPage(currentPage);
        if (allMedicineByPage != null) {
            System.out.println("发送成功");
            return RestBean.success(allMedicineByPage);
        } else {
            return RestBean.failure(500, "获取数据失败");
        }
    }

    @GetMapping("/getByName")
    public RestBean<IPage<Medicine>> getMedicineByName(@RequestParam String name, @RequestParam int currentPage) {
        IPage<Medicine> medicineByName = medicineService.findMedicineByName(name, currentPage);
        if (medicineByName != null) {
            return RestBean.success(medicineByName);
        }
        return RestBean.failure(500, "获取数据失败");
    }

    @PostMapping("/save")
    public RestBean<Medicine> saveMedicineOne(@RequestBody Medicine medicine) {
        if (medicineService.saveMedicineOne(medicine)) {
            return RestBean.success(medicine);
        }
        return RestBean.failure(500, "保存失败");
    }

    @PostMapping("/deleteById")
    public RestBean<Void> deleteMedicineById(@RequestBody Medicine medicine) {
        if (medicineService.deleteMedicineById(medicine.getMedicineId())) {
            return RestBean.success();
        }
        return RestBean.failure(500, "删除失败");
    }

    @PostMapping("/batchDelete")
    public RestBean<Void> batchDeleteMedicineById(@RequestBody List<Integer> medicineIds) {
        if (medicineService.batchDeleteMedicineById(medicineIds)) {
            return RestBean.success();
        }
        return RestBean.failure(500, "删除失败");
    }
}
