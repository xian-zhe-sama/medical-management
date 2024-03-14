package com.es.entity.vo.request;

import jakarta.validation.constraints.Email;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

@Data
public class EmailResetVO {
    @Email
    private String email;
    @Length(max = 6, min = 6)
    private String code;
    @Length(max = 20, min = 6)
    private String password;
}
