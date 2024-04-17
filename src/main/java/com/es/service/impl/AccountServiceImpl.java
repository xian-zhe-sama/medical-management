package com.es.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.es.entity.Account;
import com.es.entity.vo.request.ConfirmRestVO;
import com.es.entity.vo.request.EmailRegisterVO;
import com.es.entity.vo.request.EmailResetVO;
import com.es.mapper.AccountMapper;
import com.es.service.AccountService;
import com.es.util.CacheCleanUtils;
import com.es.util.Const;
import com.es.util.FlowUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.Resource;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
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
    @Resource
    ObjectMapper objectMapper;
    @Resource
    AccountMapper accountMapper;
    @Resource
    CacheCleanUtils cacheCleanUtils;
    private final String cacheKey = "findAllAccountByPage:*";
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

    @Override
    public boolean resetEmailAccount(Account account) {
        String password = encoder.encode(account.getPassword());
        int id = account.getId();
        return this.update().eq("id", id).set("password", password).update();
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



    @Override
    public IPage<Account> findAllAccountByPage(int currentPage) {
        // 构建Redis中存储的key
        String key = "findAllAccountByPage:" + currentPage + ":" + 10;
        // 尝试从Redis获取用户信息的分页数据
        String dataFromRedis = stringRedisTemplate.opsForValue().get(key);
        if (dataFromRedis != null) {
            try {
                // 如果Redis中有数据，则直接反序列化返回
                return objectMapper.readValue(dataFromRedis, new TypeReference<Page<Account>>() {
                });
            } catch (JsonProcessingException e) {
                // 日志打印反序列化错误
                e.printStackTrace();
            }
        }
        // 创建用户信息分页对象，设置当前页码和每页记录数
        Page<Account> accountIPage = new Page<>(currentPage, 10);
        // 查询数据库，并封装用户信息及所属部门名称
        IPage<Account> result = page(accountIPage);
        result.getRecords().forEach(account -> {
            account.setPassword(null);
        });
        try {
            // 将查询结果序列化，并存储到Redis中，设置过期时间为60分钟
            String resultJson = objectMapper.writeValueAsString(result);
            stringRedisTemplate.opsForValue().set(key, resultJson, 60, TimeUnit.MINUTES);
        } catch (JsonProcessingException e) {
            // 日志打印序列化错误
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public boolean deleteAccountById(Integer accountId) {
        boolean isSuccess = removeById(accountId);
        if (isSuccess) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess;
    }

    @Override
    public boolean batchDeleteAccountById(List<Integer> accountIds) {
        int isSuccess = accountMapper.deleteBatchIds(accountIds);
        if (isSuccess>0) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return isSuccess > 0;
    }

    @Override
    public IPage<Account> findAccountByName(String userName, int currentPage) {
        Page<Account> page = new Page<>();
        if (userName != null) {
            return page(page, new QueryWrapper<Account>().like("username", userName));
        }
        return findAllAccountByPage(currentPage);
    }

    @Override
    public String saveAccountOne(Account account) {
        if (existsAccountByEmail(account.getEmail())) {
            return "邮箱已存在";
        }
        if (existsAccountByUsername(account.getUsername())) {
            return "用户名已存在";
        }
        account.setPassword(encoder.encode(account.getPassword()));
        boolean isSuccess = saveOrUpdate(account);
        if (isSuccess) {
            cacheCleanUtils.sendCacheCleaningMessage(cacheKey);
        }
        return "保存成功";
    }

}
