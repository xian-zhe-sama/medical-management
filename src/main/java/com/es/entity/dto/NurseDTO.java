package com.es.entity.dto;

import com.es.entity.Nurse;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NurseDTO extends Nurse {
    private String departmentName;
}
