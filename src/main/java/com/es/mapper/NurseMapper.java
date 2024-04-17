package com.es.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.es.entity.Doctor;
import com.es.entity.Nurse;
import com.es.entity.dto.DoctorDTO;
import com.es.entity.dto.NurseDTO;
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
public interface NurseMapper extends BaseMapper<Nurse> {
    // 使用@Select注解直接在接口方法上编写SQL进行查询
    //查询所有护士信息，并关联查询部门名称
    @Select("SELECT n.*, dp.name AS departmentName FROM nurse n LEFT JOIN department dp ON n.department_id = dp.department_id")
    @Results({
            @Result(property = "departmentName", column = "departmentName"),
            // 这里可以继续映射其他字段
    })
    IPage<NurseDTO> findAllNurseWithDepartmentName(Page<?> page);
    @Select("SELECT n.*, dp.name AS departmentName FROM nurse n LEFT JOIN department dp ON n.department_id = dp.department_id where n.name like concat('%',#{name},'%') ")
    @Results({
            @Result(property = "departmentName", column = "departmentName"),
            // 这里可以继续映射其他字段
    })
    IPage<NurseDTO> findNurseWithDepartmentNameByName(String name,Page<?>page);


}
