package com.es.entity.dto;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * <p>
 * 雇员实体类
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
@Setter
@Getter
@AllArgsConstructor
@TableName("employee")
public class Employee implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @TableId(value = "employee_id", type = IdType.AUTO)
    private Integer employeeId;

    private String username;

    private String sex;

    private String phone;

    private LocalDateTime date;

    private String email;

    private String address;

    /**
     * 关联的account账号
     */
    private Integer accountId;

    /**
     * 员工工资
     */
    private BigDecimal salary;

    /**
     * 员工对应的部门id
     */
    private Integer departmentId;

    @Override
    public String toString() {
        return "Employee{" +
        "employeeId = " + employeeId +
        ", username = " + username +
        ", sex = " + sex +
        ", phone = " + phone +
        ", date = " + date +
        ", email = " + email +
        ", address = " + address +
        ", accountId = " + accountId +
        ", salary = " + salary +
        ", departmentId = " + departmentId +
        "}";
    }
}
