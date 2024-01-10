package com.es.entity.dto;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@TableName("db_account")
@AllArgsConstructor
public class Account {
    @TableId(type = IdType.AUTO)
    private Integer id;//mybatis plus 推荐用包装类型
    private String username;
    private String password;
    private String email;
    private String role;
    private Date registerTime;// 或者LocalDateTime
}
