package com.es.entity.vo.request;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Pattern;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

@Data
public class EmailRegisterVO {
    @Email
    @Length(min = 4)
    private String email;
    @Length(max = 6, min = 6)
    private  String code;
    @Pattern(regexp = "^[a-zA-Z0-9\\u4e00-\\u9fa5]+$")//只能匹配数字英文汉字 长度在2到8
    @Length(min = 2, max = 8)
    private String username;
    @Length(max = 20, min = 6) //密码最少6位，最长20位。
    private String password;
}
