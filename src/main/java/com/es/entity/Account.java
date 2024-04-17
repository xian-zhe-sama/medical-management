package com.es.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.es.entity.vo.BaseData;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

/**
 * 用户实体类
 */
@Data
@TableName("account")
@AllArgsConstructor
public class Account implements BaseData {
    @TableId(type = IdType.AUTO)
    private Integer id;//mybatis plus 推荐用包装类型
    private String username;
    private String password;
    private String email;
    private String role;
    private Date registerTime;// 或者LocalDateTime
}
