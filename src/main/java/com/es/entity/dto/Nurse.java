package com.es.entity.dto;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;

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
public class Nurse implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    /**
     * 护士编号
     */
    @TableId("nurse_id")
    private Integer nurseId;

    /**
     * 护士姓名
     */
    private String name;

    /**
     * 护士年龄
     */
    private Integer age;

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
        ", age = " + age +
        ", gender = " + gender +
        ", phone = " + phone +
        ", departmentId = " + departmentId +
        ", accountId = " + accountId +
        "}";
    }
}
