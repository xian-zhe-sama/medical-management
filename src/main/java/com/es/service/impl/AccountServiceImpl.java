package com.es.service.impl;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.dto.Account;
import com.es.entity.vo.request.ConfirmRestVO;
import com.es.entity.vo.request.EmailRegisterVO;
import com.es.entity.vo.request.EmailResetVO;
import com.es.mapper.AccountMapper;
import com.es.service.AccountService;
import com.es.util.Const;
import com.es.util.FlowUtils;
import jakarta.annotation.Resource;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;

@Service
public class AccountServiceImpl extends ServiceImpl<AccountMapper, Account> implements AccountService {
    @Resource
    AmqpTemplate amqpTemplate;
    @Resource
    StringRedisTemplate stringRedisTemplate;
    @Resource
    FlowUtils flowUtils;
    @Resource
    PasswordEncoder encoder;
    /**
     *
     * @param username the username identifying the user whose data is required.
     * @return
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Account account = this.findAccountByNameOrEmail(username);
        if (account == null) {
            throw new UsernameNotFoundException("用户名或密码错误");
        }
        return User.withUsername(username)
                .password(account.getPassword())
                .roles(account.getRole())
                .build();
    }

    /**
     * 根据用户名或邮箱查询用户
     * @param text
     * @return
     */
    public Account findAccountByNameOrEmail(String text) {
        return this.query()
                .eq("username", text).or()
                .eq("email", text)
                .one();
    }

    /**
     * 将邮箱注册验证码丢到消息队列里，线程安全，根据ip判断接收多少请求
     * @param type
     * @param email
     * @param ip
     * @return
     */
    @Override
    public String registerEmailVerifyCode(String type, String email, String ip) {
        synchronized (ip.intern()) {
            if (!this.verifyLimit(ip)) {
                return "请求频繁，请稍后再试";
            }
            Random random = new Random();
            int code = random.nextInt(899999) + 100000;
            Map<String, Object> data = Map.of("type", type, "email", email, "code", code);
            amqpTemplate.convertAndSend("mail",data);
            stringRedisTemplate.opsForValue()
                    .set(Const.VERIFY_EMAIL_DATA+email,String.valueOf(code),3, TimeUnit.MINUTES);//
            return null;
        }

    }

    /**
     * 根据ip判断发送验证码是否在冷却时间，不再则发送并设置60s CD
     * @param ip
     * @return
     */
    private boolean verifyLimit(String ip) {
        String key = Const.VERIFY_EMAIL_LIMIT + ip;
        return flowUtils.limitOnceCheck(key, 60);
    }

    /**
     * 通过邮箱注册账号
     * @param vo
     * @return
     */
    @Override
    public String registerEmailAccount(EmailRegisterVO vo) {
        String email = vo.getEmail();
        String username = vo.getUsername();
        String key = Const.VERIFY_EMAIL_DATA + email;
        String code = stringRedisTemplate.opsForValue().get(key);
        if (code == null) {
            return "请先获取验证码";
        }
        if(!code.equals(vo.getCode())){
            return "验证码输入错误，请重新输入";
        }
        if (this.existsAccountByEmail(email)) {
            return "此电子邮件已被注册";
        }
        if (this.existsAccountByUsername(username)) {
            return "用户名已存在";
        }
        String password = encoder.encode(vo.getPassword());
        Account account = new Account(null, username, password, email, "user", new Date());
        if (this.save(account)) {
            stringRedisTemplate.delete(key);
            return null;
        }else {
            return "内部错误，请联系管理员";
        }
    }

    /**
     * 判断重置密码的验证码是否正确
     * @param vo
     * @return
     */
    @Override
    public String resetConfirm(ConfirmRestVO vo) {
        String email = vo.getEmail();
        String code = stringRedisTemplate.opsForValue().get(Const.VERIFY_EMAIL_DATA + email);
        if (code == null) {
            return "请先获取验证码";
        }
        if(!code.equals(vo.getCode())){
            return "验证码错误，请重新输入";
        }
        return null;
    }

    /**
     * 重置密码并删除redis中的验证码
     * @param vo
     * @return
     */
    @Override
    public String resetEmailAccountPassword(EmailResetVO vo) {
        String email = vo.getEmail();
        String verify = this.resetConfirm(new ConfirmRestVO(vo.getEmail(), vo.getCode()));
        if (verify != null) {
            return verify;
        }
        String password = encoder.encode(vo.getPassword());
        boolean update = this.update().eq("email", email).set("password", password).update();
        if(update){
            stringRedisTemplate.delete(Const.VERIFY_EMAIL_DATA + email);
        }
        return null;
    }

    /**
     * 邮箱是否已存在
     * @param email
     * @return
     */

    private boolean existsAccountByEmail(String email) {
        return this.baseMapper.exists(Wrappers.<Account>query().eq("email", email));
    }

    /**
     * 用户名是否已存在
     * @param username
     * @return
     */
    private boolean existsAccountByUsername(String username) {
        return this.baseMapper.exists(Wrappers.<Account>query().eq("username", username));
    }

}
