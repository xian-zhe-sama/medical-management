package com.es.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.es.entity.Account;
import com.es.entity.vo.request.ConfirmRestVO;
import com.es.entity.vo.request.EmailRegisterVO;
import com.es.entity.vo.request.EmailResetVO;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface AccountService extends IService<Account>, UserDetailsService {
    Account findAccountByNameOrEmail(String text);

    String registerEmailVerifyCode(String type,String email,String ip);

    String registerEmailAccount(EmailRegisterVO emailRegisterVO);

    String resetConfirm(ConfirmRestVO confirmRestVO);

    String resetEmailAccountPassword(EmailResetVO emailResetVO);

    boolean resetEmailAccount(Account account);
    IPage<Account> findAllAccountByPage(int currentPage);
    boolean deleteAccountById(Integer accountId);
    boolean batchDeleteAccountById(List<Integer> accountIds);
    IPage<Account> findAccountByName(String name,int currentPage);
    String saveAccountOne(Account account);
    String changeAccountOne(Account account);
}
