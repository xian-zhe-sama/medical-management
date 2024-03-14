package com.es.controller;

import com.es.entity.RestBean;
import com.es.entity.vo.request.EmailRegisterVO;
import com.es.service.AccountService;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Pattern;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.function.Supplier;

@Validated
@RestController
@RequestMapping("/api/auth")
public class AuthorizeController {
    @Resource
    AccountService service;
    @GetMapping("/ask-code")
    public RestBean<Void> askVerifyCode(@RequestParam @Email String email,
                                        @RequestParam @Pattern(regexp = "(register|rest)") String type,
                                        HttpServletRequest request) {
       return this.messageHandle(() -> service.registerEmailVerifyCode(type, email, request.getRemoteAddr()));
//        String message = service.registerEmailVerifyCode(type, email, request.getRemoteAddr());
//        return message == null ? RestBean.success() : RestBean.failure(400, message);
    }
    @PostMapping("/register")
    public RestBean<Void> register(@RequestBody @Valid EmailRegisterVO vo) {
        return this.messageHandle(() -> service.registerEmailAccount(vo));
    }

    /**
     * 处理信息结果并返回相应结果。
     * @param action
     * @return
     */
    private RestBean<Void> messageHandle(Supplier<String> action) {
        String message = action.get();
        return message == null ? RestBean.success() : RestBean.failure(400, message);
    }
}
