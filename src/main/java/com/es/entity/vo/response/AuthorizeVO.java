package com.es.entity.vo.response;

import lombok.Data;

import java.util.Date;

/**
 * 用户vo实体类，方便前端取数据，存放用户信息和token
 */
@Data
public class AuthorizeVO {

    private String username;
    private String role;
    private String token;
    private Date expire;
}
