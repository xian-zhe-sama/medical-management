package com.es.entity.dto;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;

/**
 * <p>
 * 病例与药品对应表
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
@Setter
@Getter
@TableName("prescription")
public class Prescription implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    /**
     * 处方ID
     */
    @TableId(value = "prescription_id", type = IdType.AUTO)
    private Integer prescriptionId;

    /**
     * 病历ID
     */
    private Integer recordId;

    /**
     * 药品ID
     */
    private Integer medicineId;

    @Override
    public String toString() {
        return "Prescription{" +
        "prescriptionId = " + prescriptionId +
        ", recordId = " + recordId +
        ", medicineId = " + medicineId +
        "}";
    }
}
