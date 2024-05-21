package com.es.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

import java.io.Serializable;
import java.time.LocalDate;

/**
 * <p>
 * 
 * </p>
 *
 * @author es
 * @since 2024-04-21
 */
public class Pharmacist implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 药品管理员id
     */
    @TableId(value = "pharmacist_id", type = IdType.AUTO)
    private Integer pharmacistId;

    /**
     * 药品管理员姓名
     */
    private String name;

    /**
     * 性别
     */
    private String gender;

    private LocalDate birthday;

    /**
     * 电话
     */
    private String phone;

    /**
     * 对应的账号id
     */
    private Integer accountId;

    public Integer getPharmacistId() {
        return pharmacistId;
    }

    public void setPharmacistId(Integer pharmacistId) {
        this.pharmacistId = pharmacistId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getAccountId() {
        return accountId;
    }

    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }

    @Override
    public String toString() {
        return "Pharmacist{" +
        "pharmacistId = " + pharmacistId +
        ", name = " + name +
        ", gender = " + gender +
        ", birthday = " + birthday +
        ", phone = " + phone +
        ", accountId = " + accountId +
        "}";
    }
}
