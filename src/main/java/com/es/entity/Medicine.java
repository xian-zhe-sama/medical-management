package com.es.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * <p>
 * 药品实体类
 * </p>
 *
 * @author es
 * @since 2024-04-11
 */
@Setter
@Getter
@TableName("medicine")
public class Medicine implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    /**
     * 药品ID
     */
    @TableId(value = "medicine_id", type = IdType.AUTO)
    private Integer medicineId;

    /**
     * 药品名称
     */
    private String name;

    /**
     * 药品描述
     */
    private String description;

    /**
     * 价格
     */
    private BigDecimal price;

    /**
     * 数量
     */
    private Integer quantity;

    /**
     * 入库时间
     */
    private LocalDate inboundTime;

    /**
     * 过期时间
     */
    private LocalDate expirationTime;

    @Override
    public String toString() {
        return "Medicine{" +
        "medicineId = " + medicineId +
        ", name = " + name +
        ", description = " + description +
        ", price = " + price +
        ", quantity = " + quantity +
        ", inboundTime = " + inboundTime +
        ", expirationTime = " + expirationTime +
        "}";
    }
}
