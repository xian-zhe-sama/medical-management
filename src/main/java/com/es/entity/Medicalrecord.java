package com.es.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDate;

/**
 * <p>
 * 病历单实体类
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
@Setter
@Getter
@TableName("medicalrecord")
public class Medicalrecord implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    /**
     * 病历ID
     */
    @TableId(value = "record_id", type = IdType.AUTO)
    private Integer recordId;

    /**
     * 病人ID
     */
    private Integer patientId;

    /**
     * 医生ID
     */
    private Integer doctorId;

    /**
     * 就诊日期
     */
    private LocalDate visitDate;

    /**
     * 诊断记录
     */
    private String diagnosis;

    @Override
    public String toString() {
        return "Medicalrecord{" +
        "recordId = " + recordId +
        ", patientId = " + patientId +
        ", doctorId = " + doctorId +
        ", visitDate = " + visitDate +
        ", diagnosis = " + diagnosis +
        "}";
    }
}
