package com.es.entity;

import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;

public record RestBean<T>(int code, T data, String message) {
    public static <T> RestBean<T> success(T data) {
        return new RestBean<>(200,data,"请求成功");
    }
    public static <T> RestBean<T> success() {
        return success(null);
    }

    /**
     * 未验证请求
     * @param message security返回的失败信息
     * @return 调用本类 failure方法 错误代码401
     * @param <T>
     */
    public static <T> RestBean<T> unauthorized(String message) {
        return failure(401,message);
    }

    /**
     * 访问本角色不具有权限的页面
     * @param message security返回的失败信息
     * @return 调用本类 failure方法 错误代码403
     * @param <T>
     */
    public static <T> RestBean<T> forbidden(String message) {
        return failure(403,message);
    }

    /**
     * 登录失败，接收错误代码和失败信息
     * @param code 错误代码
     * @param message   失败信息
     * @return
     * @param <T>
     */
    public static <T>RestBean<T> failure(int code,String message){
        return new RestBean<>(code,null,message);
    }

    public String asJsonString() {
        //添加write nulls，可以返回空值，不然空值就没有了
        return JSONObject.toJSONString(this, JSONWriter.Feature.WriteNulls);
    }
}
