package com.es.controller.exception;

import com.es.entity.RestBean;
import jakarta.validation.ValidationException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 验证异常处理控制器
 */
@Slf4j
@RestControllerAdvice
public class ValidationController {
    /**
     * 邮箱异常或者操作方法异常，打印日志。
     * @param exception
     * @return
     */
    @ExceptionHandler(ValidationException.class)
    private RestBean<Void> validateException(ValidationException exception) {
        log.warn("Resolve [{} : {}]",exception.getClass().getName(),exception.getMessage());
        return RestBean.failure(400, "请求参数有误");
    }
}
