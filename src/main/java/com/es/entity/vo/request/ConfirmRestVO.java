package com.es.entity.vo.request;

import jakarta.validation.constraints.Email;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

@Data
@AllArgsConstructor
public class ConfirmRestVO {
    @Email
    private String email;
    @Length(max = 6, min = 6)
    private String code;
}
