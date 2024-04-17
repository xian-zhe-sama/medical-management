package com.es.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author es
 * @since 2024-04-16
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Equipment implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 设备id
     */
    @TableId(value = "equipment_id",type = IdType.AUTO)
    private Integer equipmentId;

    /**
     * 设备名
     */
    private String name;

    /**
     * 设备状态
     */
    private String status;

    private Integer departmentId;

    @Override
    public String toString() {
        return "Equipment{" +
        "equipmentId = " + equipmentId +
        ", name = " + name +
        ", status = " + status +
        ", departmentId = " + departmentId +
        "}";
    }
}
