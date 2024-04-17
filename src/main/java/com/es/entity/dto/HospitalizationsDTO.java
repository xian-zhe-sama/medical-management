package com.es.entity.dto;

import com.es.entity.Hospitalizations;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class HospitalizationsDTO extends Hospitalizations {
    private String departmentName;
}
