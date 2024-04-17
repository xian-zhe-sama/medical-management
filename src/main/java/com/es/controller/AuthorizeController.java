package com.es.controller;

import com.es.entity.Account;
import com.es.entity.RestBean;
import com.es.entity.vo.request.ConfirmRestVO;
import com.es.entity.vo.request.EmailRegisterVO;
import com.es.entity.vo.request.EmailResetVO;
import com.es.service.AccountService;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Pattern;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.function.Function;
import java.util.function.Supplier;

@Validated
@RestController
@RequestMapping("/api/auth")
public class AuthorizeController {
    @Resource
    AccountService service;

    /**
     * 请求验证码
     * @param email
     * @param type
     * @param request
     * @return
     */
    @GetMapping("/ask-code")
    public RestBean<Void> askVerifyCode(@RequestParam @Email String email,
                                        @RequestParam @Pattern(regexp = "(register|reset)") String type,
                                        HttpServletRequest request) {
        return this.messageHandle(() -> service.registerEmailVerifyCode(type, email, request.getRemoteAddr()));
//        String message = service.registerEmailVerifyCode(type, email, request.getRemoteAddr());
//        return message == null ? RestBean.success() : RestBean.failure(400, message);
    }

    /**
     * 用户注册
     * @param vo
     * @return
     */
    @PostMapping("/register")
    public RestBean<Void> register(@RequestBody @Valid EmailRegisterVO vo) {
        return this.messageHandle(vo,service::registerEmailAccount);
    }

    /**
     * 重置密码确认验证码
     * @param vo
     * @return
     */
    @PostMapping("/reset-confirm")
    public RestBean<Void> resetConfirm(@RequestBody @Valid ConfirmRestVO vo) {
        return this.messageHandle(vo,service::resetConfirm);
    }

    /**
     * 重置密码
     * @param vo
     * @return
     */
    @PostMapping("/reset-password")
    public RestBean<Void> resetPassword(@RequestBody @Valid EmailResetVO vo) {
        return this.messageHandle(vo,service::resetEmailAccountPassword);
    }



    private <T> RestBean<Void> messageHandle(T vo, Function<T, String> function) {
        return messageHandle(() -> function.apply(vo));
    }
    /**
     * 处理信息结果并返回相应结果。
     *
     * @param action
     * @return
     */
    private RestBean<Void> messageHandle(Supplier<String> action) {
        String message = action.get();
        return message == null ? RestBean.success() : RestBean.failure(400, message);
    }


}
