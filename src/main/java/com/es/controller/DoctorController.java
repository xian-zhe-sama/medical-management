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

    /**
     * 保存一个医生信息
     *
     * @param doctor 包含医生详细信息的对象，通过RequestBody接收前端传来的JSON数据
     * @return RestBean<Doctor> 如果保存成功，返回一个包含成功状态的RestBean；如果保存失败，返回一个包含错误状态和消息的RestBean
     */
    @PostMapping("/save")
    public RestBean<Doctor> saveDoctorOne(@RequestBody Doctor doctor) {
        // 尝试保存医生信息，如果保存成功则返回成功状态，否则返回失败状态
        if (doctorService.saveDoctorOne(doctor)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "保存失败");
        }
    }

    /**
     * 通过页面获取所有医生信息
     *
     * @param currentPage 当前页码，用于分页查询
     * @return RestBean<IPage<DoctorDTO>> 包含查询结果的RestBean对象，如果查询成功，返回医生信息的分页结果；如果查询失败，返回错误信息。
     */
    @GetMapping("/getAll")
    public RestBean<IPage<DoctorDTO>> findAllDoctorByPage(@RequestParam int currentPage) {
        // 通过页面编号查询所有医生信息
        IPage<DoctorDTO> allDoctorByPage = doctorService.findAllDoctorByPage(currentPage);
        if (allDoctorByPage != null) {
            // 查询成功，返回医生信息的分页结果
            return RestBean.success(allDoctorByPage);
        } else {
            // 查询失败，返回错误信息
            return RestBean.failure(500, "获取失败");
        }
    }

    /**
     * 根据账户ID获取医生信息
     *
     * @param accountId 医生的账户ID，用于查询医生信息
     * @return 返回一个RestBean对象，如果查询成功，封装的医生对象；如果查询失败，返回错误信息。
     */
    @GetMapping("/getById")
    public RestBean<Doctor> findDoctorById(@RequestParam Integer accountId) {
        // 通过账户ID查询医生信息
        Doctor doctorById = doctorService.findDoctorById(accountId);
        System.out.println("accountId"+accountId);
        if (doctorById != null) {
            // 查询结果不为空，返回成功结果，包含医生信息
            return RestBean.success(doctorById);
        } else {
            // 查询结果为空，返回失败结果，包含错误代码和信息
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
    /**
     * 批量通过ID删除医生信息
     *
     * @param doctorIds 医生ID列表，请求体中传递，用于指定要删除的医生
     * @return 返回一个RestBean对象，如果删除成功，则返回成功的RestBean；如果删除失败，则返回带有错误信息的RestBean。
     */
    @PostMapping("/batchDelete")
    public RestBean<Void> batchDeleteDoctorById(@RequestBody List<Integer> doctorIds) {
        // 调用服务层方法，尝试批量删除指定ID的医生信息
        if (doctorService.batchDeleteDoctorById(doctorIds)) {
            // 删除成功，返回成功状态的RestBean
            return RestBean.success();
        } else {
            // 删除失败，返回失败状态的RestBean，包含错误信息
            return RestBean.failure(500, "删除失败");
        }
    }
}
