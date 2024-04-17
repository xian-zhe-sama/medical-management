package com.es.entity.dto;

import com.es.entity.Equipment;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EquipmentDTO extends Equipment {
    private String departmentName;
}
