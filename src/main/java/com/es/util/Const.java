package com.es.util;

public class Const {
    public static final String JWT_BLACK_LIST = "jwt:blacklist";
    public static final String VERIFY_EMAIL_LIMIT = "verify:email:limit";
    public static final String VERIFY_EMAIL_DATA = "verify:email:data";
    //跨域请求的优先级
    public static final int ORDER_CORS = -102;
    //访问限流优先级
    public static final int ORDER_LIMIT = -101;
    //计数器
    public static final String FLOW_LIMIT_COUNTER = "flow:counter";
    //封禁
    public static final String FLOW_LIMIT_BLOCK = "flow:block";
}
