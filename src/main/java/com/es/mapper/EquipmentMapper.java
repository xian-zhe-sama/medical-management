package com.es.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.es.entity.Equipment;
import com.es.entity.dto.DoctorDTO;
import com.es.entity.dto.EquipmentDTO;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author es
 * @since 2024-04-16
 */
public interface EquipmentMapper extends BaseMapper<Equipment> {
    @Select("SELECT e.*, dp.name AS departmentName FROM equipment e LEFT JOIN department dp ON e.department_id = dp.department_id")
    @Results({
            @Result(property = "departmentName", column = "departmentName"),
            // 这里可以继续映射其他字段
    })
    IPage<EquipmentDTO> findAllEquipmentWithDepartmentName(Page<?> page);
    @Select("SELECT e.*, dp.name AS departmentName FROM equipment e LEFT JOIN department dp ON e.department_id = dp.department_id where e.name like concat('%',#{name},'%') ")
    @Results({
            @Result(property = "departmentName", column = "departmentName"),
            // 这里可以继续映射其他字段
    })
    IPage<EquipmentDTO> findEquipmentWithDepartmentNameByName(String name, Page<?>page);
}
