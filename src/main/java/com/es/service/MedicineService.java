package com.es.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.es.entity.Medicine;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
public interface MedicineService extends IService<Medicine> {
    public boolean saveMedicineOne(Medicine medicine);
    public boolean deleteMedicineById(Integer medicineId);
    public IPage<Medicine> findAllMedicineByPage(int currentPage);
    public IPage<Medicine> findMedicineByName(String name,int currentPage);
    public boolean batchDeleteMedicineById(List<Integer> medicineIds);
}
