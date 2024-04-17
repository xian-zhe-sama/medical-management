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
 * 
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
@Setter
@Getter
@TableName("nurse")
@AllArgsConstructor
@NoArgsConstructor
public class Nurse implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;
    /**
     * 护士编号
     */
    @TableId(value = "nurse_id",type=IdType.AUTO)
    private Integer nurseId;

    /**
     * 护士姓名
     */
    private String name;

    /**
     * 生日
     */
    private LocalDate birthday;

    /**
     * 性别
     */
    private String gender;

    /**
     * 手机号
     */
    private String phone;

    /**
     * 对应部门编号
     */
    private Integer departmentId;

    /**
     * 对应用户编号
     */
    private Integer accountId;

    @Override
    public String toString() {
        return "Nurse{" +
        "nurseId = " + nurseId +
        ", name = " + name +
        ", age = " + birthday +
        ", gender = " + gender +
        ", phone = " + phone +
        ", departmentId = " + departmentId +
        ", accountId = " + accountId +
        "}";
    }
}
