package com.es.util;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.util.Calendar;
import java.util.Date;

@Component
public class JwtUtils {
    //配置文件中的jwt令牌key
    @Value("${spring.security.jwt.key}")
    String key;
    // 配置文件中的过期时间，单位（小时）
    @Value("${spring.security.jwt.expire}")
    int expires;
    public String createJwt(UserDetails user, int id, String username) {
        Algorithm algorithm = Algorithm.HMAC256(key);
        return JWT.create()
                .withClaim("id", id)
                .withClaim("name", username)
                .withClaim("authorities", user.getAuthorities().stream().map(GrantedAuthority::getAuthority).toList())
                .withExpiresAt(expireTime())//设置过期时间，多久过期
                .withIssuedAt(new Date())  //当前token颁发时间
                .sign(algorithm);//签名
    }

    /**
     * 设置过期时间 单位（天）
     * @return
     */
    public Date expireTime() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.HOUR,expires*24);
        return calendar.getTime();
    }
}
