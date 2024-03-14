package com.es.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.es.entity.dto.Account;
import com.es.entity.vo.request.ConfirmRestVO;
import com.es.entity.vo.request.EmailRegisterVO;
import com.es.entity.vo.request.EmailResetVO;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface AccountService extends IService<Account>, UserDetailsService {
    Account findAccountByNameOrEmail(String text);

    String registerEmailVerifyCode(String type,String email,String ip);

    String registerEmailAccount(EmailRegisterVO emailRegisterVO);

    String resetConfirm(ConfirmRestVO confirmRestVO);

    String resetEmailAccountPassword(EmailResetVO emailResetVO);
}
