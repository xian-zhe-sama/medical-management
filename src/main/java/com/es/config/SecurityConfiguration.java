package com.es.config;

import com.auth0.jwt.interfaces.JWTVerifier;
import com.es.entity.RestBean;
import com.es.entity.dto.Account;
import com.es.entity.vo.response.AuthorizeVO;
import com.es.filter.JwtAuthorizeFilter;
import com.es.service.AccountService;
import com.es.util.JwtUtils;
import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.BeanUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.annotation.web.configurers.ExceptionHandlingConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;


import java.io.IOException;
import java.io.PrintWriter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration {
    @Resource
    JwtUtils jwtUtils;
    @Resource
    JwtAuthorizeFilter jwtAuthorizeFilter;
    @Resource
    AccountService service;
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http
                .authorizeHttpRequests(conf -> {
                    conf.requestMatchers("/api/auth/**","/error","/api/test/**").permitAll();
                    conf.anyRequest().authenticated();//全部请求都要验证
                })
                .formLogin(conf -> {
                    conf.loginProcessingUrl("/api/auth/login");
                    conf.successHandler(this::onAuthenticationSuccess);
                    conf.failureHandler(this::onAuthenticationFailure);
                })
                .logout(conf -> {
                    conf.logoutUrl("/api/auth/logout");
                    conf.logoutSuccessHandler(this::onLogoutSuccess);
                    conf.permitAll();
                })
                .csrf(AbstractHttpConfigurer::disable)
                .sessionManagement(conf -> {
                    //将session配置为无状态，使用jwt令牌登录
                    conf.sessionCreationPolicy(SessionCreationPolicy.STATELESS);
                })
                .addFilterBefore(jwtAuthorizeFilter, UsernamePasswordAuthenticationFilter.class)//将jwt过滤器添加
                .exceptionHandling(conf -> {
                    conf.authenticationEntryPoint(this::onUnauthorizted);
                    conf.accessDeniedHandler(this::onAccessDeny);
                })//异常处理器，如果未登录进行访问不会直接返回登录页面，返回json格式数据
                .build();
    }

    /**
     * 访问本角色不具有权限的页面
     * @param request
     * @param response
     * @param accessDeniedException
     * @throws IOException
     */
    public void onAccessDeny(HttpServletRequest request,
                             HttpServletResponse response,
                             AccessDeniedException accessDeniedException) throws IOException, ServletException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.getWriter().write( RestBean.forbidden(accessDeniedException.getMessage()).asJsonString());
    }

    /**
     * 未通过验证处理器，返回json数据 code 401，message 失败原因，未登录或登陆失败或访问不具有权限的页面，
     * @param request
     * @param response
     * @param e
     * @throws IOException
     */
        public void onUnauthorizted(HttpServletRequest request,
                                    HttpServletResponse response,
                                    AuthenticationException e) throws IOException {
            response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json");
            response.getWriter().write(RestBean.unauthorized(e.getMessage()).asJsonString());

        }

    /**
     *登陆成功接口
     * @param request
     * @param response
     * @param authentication
     * @throws IOException
     * @throws ServletException
     */
    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        User user = (User) authentication.getPrincipal();
        Account account = service.findAccountByNameOrEmail(user.getUsername());

        String token = jwtUtils.createJwt(user, account.getId(), account.getUsername());
        AuthorizeVO vo = account.asViewObject(AuthorizeVO.class,v->{
            v.setExpire(jwtUtils.expireTime());
            v.setToken(token);
        }) ;//将数据存放在用户vo中，方便前端取数据
//        BeanUtils.copyProperties(account,vo);//将第一个对象的属性值复制到第二个对象的相同属性名中

//        vo.setRole(account.getRole());

//        vo.setUsername(account.getUsername());
        response.getWriter().write(RestBean.success(vo).asJsonString());

    }

    /**
     * 登录失败接口,登陆失败返回错误代码，失败原因
     * @param request
     * @param response
     * @param exception
     * @throws IOException
     * @throws ServletException
     */
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        PrintWriter writer = response.getWriter();
        writer.write(RestBean.unauthorized(exception.getMessage()).asJsonString());
    }


    /**
     * 退出登录成功接口
     * @param request
     * @param response
     * @param authentication
     * @throws IOException
     * @throws ServletException
     */
    public void onLogoutSuccess(HttpServletRequest request,
                                HttpServletResponse response,
                                Authentication authentication) throws IOException, ServletException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        PrintWriter writer = response.getWriter();
        String authorization = request.getHeader("Authorization");
        if (jwtUtils.invalidateJwt(authorization)) {
            writer.write(RestBean.success().asJsonString());
        }else {
//            System.out.println("authorization        "+authorization);
            writer.write(RestBean.failure(400,"退出失败").asJsonString());
        }
    }
}
