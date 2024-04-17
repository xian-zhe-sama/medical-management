package com.es.entity.dto;

import com.es.entity.Doctor;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
public class DoctorDTO extends Doctor {
    private String departmentName;
}
