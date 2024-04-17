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
 * 
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
@Setter
@Getter
@AllArgsConstructor
@TableName("patient")
public class Patient implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    /**
     * 病人ID
     */
    @TableId(value = "patient_id", type = IdType.AUTO)
    private Integer patientId;

    /**
     * 病人姓名
     */
    private String name;

    /**
     * 性别（M表示男性，F表示女性）
     */
    private String gender;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 地址
     */
    private String address;

    /**
     * 电话号码
     */
    private String phone;

    /**
    对应的用户id
     */
    private Integer accountId;


    @Override
    public String toString() {
        return "Patient{" +
        "patientId = " + patientId +
        ", name = " + name +
        ", gender = " + gender +
        ", age = " + age +
        ", address = " + address +
        ", phone = " + phone +
        ", accountId = " + accountId +
        "}";
    }
}
