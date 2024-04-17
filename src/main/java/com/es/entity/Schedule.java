package com.es.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

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

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public LocalDateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDateTime startDate) {
        this.startDate = startDate;
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public LocalDateTime getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDateTime endDate) {
        this.endDate = endDate;
    }

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
