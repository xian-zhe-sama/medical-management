package com.es.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.es.entity.Account;
import com.es.entity.RestBean;
import com.es.service.AccountService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/account")
public class AccountController {
    @Resource
    private AccountService service;

    @PostMapping("/reset-account")
    public RestBean<Void> resetAccount(@RequestBody Account account) {
        if (service.resetEmailAccount(account)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "修改失败");
        }
    }

    @PostMapping("/deleteById")
    public RestBean<Void> deleteAccountById(@RequestBody Account account) {
        if (service.deleteAccountById(account.getId())) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }

    @PostMapping("/batchDelete")
    public RestBean<Void> batchDeleteAccountById(@RequestBody List<Integer> accountIds) {
        if (service.batchDeleteAccountById(accountIds)) {
            return RestBean.success();
        } else {
            return RestBean.failure(500, "删除失败");
        }
    }

    @GetMapping("/getAll")
    public RestBean<IPage<Account>> findAllAccountByPage(@RequestParam int currentPage) {
        IPage<Account> page = service.findAllAccountByPage(currentPage);
        if (page != null) {
            return RestBean.success(page);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @GetMapping("/getByName")
    public RestBean<IPage<Account>> findAccountByName(@RequestParam String name, @RequestParam int currentPage) {
        IPage<Account> page = service.findAccountByName(name, currentPage);
        if (page != null) {
            return RestBean.success(page);
        } else {
            return RestBean.failure(500, "获取失败");
        }
    }

    @PostMapping("/save")
    public RestBean<String> saveAccountOne(@RequestBody Account account) {
        String s = service.saveAccountOne(account);
        if (s.equals("保存成功")) {
            return RestBean.success(s);
        } else {
            return RestBean.failure(500, s);
        }
    }
}
