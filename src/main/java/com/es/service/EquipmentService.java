package com.es.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.es.entity.Equipment;
import com.es.entity.dto.EquipmentDTO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author es
 * @since 2024-04-16
 */
public interface EquipmentService extends IService<Equipment> {
    boolean saveEquipmentOne(Equipment equipment);
    boolean deleteEquipmentById(Integer equipmentId);
    boolean batchDeleteEquipmentById(List<Integer> equipmentIds);
    IPage<EquipmentDTO> findAllEquipmentByPage(int currentPage);
    IPage<EquipmentDTO> findEquipmentByName(String name,int currentPage);
}
