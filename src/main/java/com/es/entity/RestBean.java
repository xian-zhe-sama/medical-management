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
