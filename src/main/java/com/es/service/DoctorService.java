package com.es.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.es.entity.Doctor;
import com.es.entity.dto.DoctorDTO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
public interface DoctorService extends IService<Doctor> {
    public boolean saveDoctorOne(Doctor doctor);
    public IPage<DoctorDTO> findAllDoctorByPage(int currentPage);
    public List<DoctorDTO> findDoctorByDepartmentId(Integer departmentId);
    public Doctor findDoctorById(Integer doctorId);
    public IPage<DoctorDTO> findDoctorByName(String name,int currentPage);
    public boolean deleteDoctorById(Integer doctorId);
    public boolean batchDeleteDoctorById(List<Integer> doctorIds);
}
