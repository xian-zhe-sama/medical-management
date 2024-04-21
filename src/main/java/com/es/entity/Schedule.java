package com.es.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 
 * </p>
 *
 * @author es
 * @since 2024-04-17
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Schedule implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 医生值班日程安排
     */
    @TableId(value = "schedule_id", type = IdType.AUTO)
    private Integer scheduleId;

    /**
     * 工作开始时间
     */
    private LocalDateTime startDate;

    /**
     * 对应的医生id
     */
    private Integer doctorId;

    /**
     * 工作结束时间
     */
    private LocalDateTime endDate;
    private Integer limit;
    @Override
    public String toString() {
        return "Schedule{" +
        "scheduleId = " + scheduleId +
        ", startDate = " + startDate +
        ", doctorId = " + doctorId +
        ", endDate = " + endDate +
        "}";
    }
}
