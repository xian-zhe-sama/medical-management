package com.es.util;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.Claim;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.auth0.jwt.interfaces.JWTVerifier;
import com.auth0.jwt.interfaces.Verification;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.util.Calendar;
import java.util.Date;
import java.util.Map;

@Component
public class JwtUtils {
    //配置文件中的jwt令牌key
    @Value("${spring.security.jwt.key}")
    String key;
    // 配置文件中的过期时间，单位（小时）
    @Value("${spring.security.jwt.expire}")
    int expires;

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
            Date expiresAt = verify.getExpiresAt();//取得令牌的过期时间
            return new Date().after(expiresAt)?null : verify;//判断当前日期是否晚于过期时间，是返回空
        } catch (JWTVerificationException e) {
            return null;
        }
    }

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
            return null;
        }
        return headerToken.substring(7);
    }
}
