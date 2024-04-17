package com.es.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;

/**
 * <p>
 * 部门实体类
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
@TableName("department")
@Setter
@Getter
@AllArgsConstructor
public class Department implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    /**
     * 科室ID
     */
    @TableId(value = "department_id", type = IdType.AUTO)
    private Integer departmentId;

    /**
     * 科室名称
     */
    private String name;

    @Override
    public String toString() {
        return "Department{" +
        "departmentId = " + departmentId +
        ", name = " + name +
        "}";
    }
}
