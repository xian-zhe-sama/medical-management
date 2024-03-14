package com.es.util;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.Claim;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.auth0.jwt.interfaces.JWTVerifier;
import com.auth0.jwt.interfaces.Verification;
import jakarta.annotation.Resource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.util.Calendar;
import java.util.Date;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Component
public class JwtUtils {
    @Value("${spring.security.jwt.key}")
    String key;    //配置文件中的jwt令牌key

    @Value("${spring.security.jwt.expire}")
    int expires;    // 配置文件中的过期时间，单位（小时）

    @Resource
    StringRedisTemplate template;    //redis模板引擎

    /**
     * 使jwt令牌失效
     * @param headerToken
     * @return
     */
    public boolean invalidateJwt(String headerToken) {
        String token = this.convertToken(headerToken);
        if(token==null) return false;
        Algorithm algorithm = Algorithm.HMAC256(key);
        JWTVerifier jwtVerifier = JWT.require(algorithm).build();
        try {
            DecodedJWT jwt = jwtVerifier.verify(token);
            String id = jwt.getId();
            return deleteToken(id,jwt.getExpiresAt());
        } catch (JWTVerificationException e) {
            return false;
        }

    }

    /**
     * 删除用户token，将token的UUID存入黑名单
     * @param uuid
     * @param time
     * @return
     */
    private boolean deleteToken(String uuid, Date time) {
        if (this.isInvalidToken(uuid)) {
            return false;
        }
        Date now = new Date();
        long expire = Math.max(time.getTime() - now.getTime(), 0);//将token过期时间减去当前系统时间，小于0取0
        template.opsForValue().set(Const.JWT_BLACK_LIST + uuid, "", expire, TimeUnit.MILLISECONDS);//将token的id存入redis，存入过期时间单位毫秒
        return true;
    }

    /**
     * 判断token是否在黑名单中
     * @param uuid token的唯一id
     * @return 在黑名单为true
     */
    private boolean isInvalidToken(String uuid) {
       return Boolean.TRUE.equals(template.hasKey(Const.JWT_BLACK_LIST + uuid));
    }

    /**
     * 解析token
     * @param headerToken
     * @return
     */
    public DecodedJWT resolveJwt(String headerToken) {
        String token = this.convertToken(headerToken);
        if (token == null) {
            return null;
        }
        Algorithm algorithm = Algorithm.HMAC256(key);//创建令牌实例
        JWTVerifier jwtVerifier = JWT.require(algorithm).build();//创建JWTVerifier实例
        try {
            DecodedJWT verify = jwtVerifier.verify(token);//验证令牌，捕获运行时异常
            if (this.isInvalidToken(verify.getId())) {//判断token是否在黑名单
                return null;
            }
            Date expiresAt = verify.getExpiresAt();//取得令牌的过期时间
            return new Date().after(expiresAt)?null : verify;//判断当前日期是否晚于过期时间，是返回空
        } catch (JWTVerificationException e) {
            return null;
        }
    }

    /**
     * 创建令牌
     * @param user
     * @param id
     * @param username
     * @return
     */
    public String createJwt(UserDetails user, int id, String username) {
        Algorithm algorithm = Algorithm.HMAC256(key);
        return JWT.create()
                .withJWTId(UUID.randomUUID().toString())
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

    /**
     * 将token中的内容存入UserDetails里
     * @param jwt
     * @return
     */
    public UserDetails toUser(DecodedJWT jwt) {
        Map<String, Claim> claims = jwt.getClaims();
        return User.withUsername(claims.get("name").asString())
                .password("******")
                .authorities(claims.get("authorities").asArray(String.class))
                .build();
    }

    public Integer toId(DecodedJWT jwt) {
        Map<String, Claim> claims = jwt.getClaims();
        return claims.get("id").asInt();
    }
    /**
     * 判断token是否存在，存在则处理token。
     * @param headerToken  请求头中的token
     * @return
     */
    private String convertToken(String headerToken) {
        if (headerToken == null || !headerToken.startsWith("Bearer ")) {
            if (headerToken != null) {
//                System.out.println("是否以Bearer 开头"+headerToken.startsWith("Bearer "));
            }
            return null;
        }
//        System.out.println("是否以Bearer 开头" + headerToken.startsWith("Bearer "));
        return headerToken.substring(7);
    }

}
