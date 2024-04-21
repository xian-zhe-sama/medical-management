package com.es.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDate;

/**
 * <p>
 * 
 * </p>
 *
 * @author es
 * @since 2024-04-15
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Hospitalizations implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 病人id
     */
    @TableId(value = "hospitalizations_id",type = IdType.AUTO)
    private Integer hospitalizationsId;

    /**
     * 病人名
     */
    private String name;

    /**
     * 病人性别
     */
    private String gender;

    /**
     * 病人出生日期
     */
    private LocalDate birthday;

    /**
     * 科室
     */
    private Integer departmentId;

    /**
     * 备注
     */
    private String remark;

    private String status;
    private String description;
    private String relativesPhone;
    private String phone;
    private String space;
    private String progress;
    @Override
    public String toString() {
        return "Hospitalizations{" +
        "patientId = " + hospitalizationsId +
        ", name = " + name +
        ", gender = " + gender +
        ", birthday = " + birthday +
        ", department = " + departmentId +
        ", remark = " + remark +
        "}";
    }
}
