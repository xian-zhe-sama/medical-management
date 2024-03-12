package com.es.filter;

import com.es.util.Const;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
@Order(Const.ORDER_CORS)
public class MyCorsFilter extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        this.addCorsHeader(request,response);
        //调用doFilter将请求传递给下一个过滤器链或资源
        chain.doFilter(request,response);
    }

    /**
     * 配置请求过滤。
     * @param request
     * @param response
     */
    private void addCorsHeader(HttpServletRequest request, HttpServletResponse response) {
        response.addHeader("Access-Control-Allow-Origin",request.getHeader("Origin"));
        response.addHeader("Access-Control-Allow-Methods","GET,POS,PUT,DELETE,OPTIONS");
        response.addHeader("Access-Control-Allow-Headers", "Authorization,Content-Type");
    }
}
