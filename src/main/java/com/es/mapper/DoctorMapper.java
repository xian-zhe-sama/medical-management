package com.es.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.es.entity.Doctor;
import com.es.entity.dto.DoctorDTO;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
public interface DoctorMapper extends BaseMapper<Doctor> {
    // 使用@Select注解直接在接口方法上编写SQL进行查询
    //查询所有医生信息，并关联查询部门名称
    @Select("SELECT d.*, dp.name AS departmentName FROM doctor d LEFT JOIN department dp ON d.department_id = dp.department_id")
    @Results({
            @Result(property = "departmentName", column = "departmentName"),
            // 这里可以继续映射其他字段
    })
    IPage<DoctorDTO> findAllDoctorWithDepartmentName(Page<?> page);
    @Select("SELECT d.*, dp.name AS departmentName FROM doctor d LEFT JOIN department dp ON d.department_id = dp.department_id where d.name like concat('%',#{name},'%') ")
    @Results({
            @Result(property = "departmentName", column = "departmentName"),
            // 这里可以继续映射其他字段
    })
    IPage<DoctorDTO> findDoctorWithDepartmentNameByName(String name,Page<?>page);

}
