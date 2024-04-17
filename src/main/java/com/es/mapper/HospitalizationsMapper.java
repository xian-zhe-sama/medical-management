package com.es.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.es.entity.Hospitalizations;
import com.es.entity.dto.DoctorDTO;
import com.es.entity.dto.HospitalizationsDTO;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author es
 * @since 2024-04-15
 */
public interface HospitalizationsMapper extends BaseMapper<Hospitalizations> {
    // 使用@Select注解直接在接口方法上编写SQL进行查询
    //查询所有医生信息，并关联查询部门名称
    @Select("SELECT h.*, dp.name AS departmentName FROM hospitalizations h LEFT JOIN department dp ON h.department_id = dp.department_id")
    @Results({
            @Result(property = "departmentName", column = "departmentName"),
            // 这里可以继续映射其他字段
    })
    IPage<HospitalizationsDTO> findAllHospitalizationWithDepartmentName(Page<?> page);
    @Select("SELECT h.*, dp.name AS departmentName FROM hospitalizations h LEFT JOIN department dp ON h.department_id = dp.department_id where h.name like concat('%',#{name},'%') ")
    @Results({
            @Result(property = "departmentName", column = "departmentName"),
            // 这里可以继续映射其他字段
    })
    IPage<HospitalizationsDTO> findHospitalizationWithDepartmentNameByName(String name,Page<?>page);
}
