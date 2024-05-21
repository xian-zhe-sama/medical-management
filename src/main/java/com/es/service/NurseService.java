package com.es.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.es.entity.Doctor;
import com.es.entity.Nurse;
import com.es.entity.dto.DoctorDTO;
import com.es.entity.dto.NurseDTO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
public interface NurseService extends IService<Nurse> {
    public boolean saveNurseOne(Nurse nurse);

    public IPage<NurseDTO> findAllNurseByPage(int currentPage);
    public boolean deleteNurseById(Integer nurseId);
    public boolean batchDeleteNurseById(List<Integer> nurseIds);
    public Nurse findNurseById(Integer nurseId);
    public IPage<NurseDTO> findNurseByName(String name,int currentPage);
    public IPage<NurseDTO> findNurseByDepartmentId(Integer departmentId,int currentPage);
    public IPage<NurseDTO> findDepartmentNurseByPage(int currentPage, int departmentId);
    public IPage<NurseDTO> findDepartmentNurseByName(String name,int departmentId,int currentPage);
}
