package com.es.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.es.entity.Pharmacist;
import com.es.entity.Pharmacist;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author es
 * @since 2024-04-21
 */
public interface PharmacistService extends IService<Pharmacist> {
    public boolean savePharmacistOne(Pharmacist pharmacist);
    public IPage<Pharmacist> findAllPharmacistByPage(int currentPage);
    public List<Pharmacist> findPharmacistByDepartmentId(Integer departmentId);
    public Pharmacist findPharmacistById(Integer pharmacistId);
    public IPage<Pharmacist> findPharmacistByName(String name,int currentPage);
    public boolean deletePharmacistById(Integer pharmacistId);
    public boolean batchDeletePharmacistById(List<Integer> pharmacistIds);
}
