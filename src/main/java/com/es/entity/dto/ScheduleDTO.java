package com.es.entity.dto;

import com.es.entity.Schedule;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
public class ScheduleDTO extends Schedule {
    private String departmentName;
    private Integer doctorId;
    private String name;
    private String gender;
    private LocalDate birthday;
    private Integer departmentId;
    private String phone;
}
