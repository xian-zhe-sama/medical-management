package com.es.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDate;

/**
 * <p>
 * 医生实体类
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@TableName("doctor")
public class Doctor implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    /**
     * 医生ID
     */
    @TableId(value = "doctor_id", type = IdType.AUTO)
    private Integer doctorId;

    /**
     * 医生姓名
     */
    private String name;

    /**
     * 性别
     */
    private String gender;

    /**
     * 生日
     */
    private LocalDate birthday;

    /**
     * 所属科室ID
     */
    private Integer departmentId;

    /**
     * 手机号
     */
    private String phone;

    @Override
    public String toString() {
        return "Doctor{" +
        "doctorId = " + doctorId +
        ", name = " + name +
        ", gender = " + gender +
        ", age = " + birthday +
        ", departmentId = " + departmentId +
        ", phone = " + phone +
        "}";
    }
}
