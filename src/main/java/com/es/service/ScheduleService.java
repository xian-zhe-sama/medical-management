package com.es.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.es.entity.Schedule;
import com.es.entity.dto.ScheduleDTO;

import java.util.List;


/**
 * <p>
 *  服务类
 * </p>
 *
 * @author es
 * @since 2024-04-17
 */
public interface ScheduleService extends IService<Schedule> {
    public boolean saveScheduleOne(Schedule schedule);
    public IPage<ScheduleDTO> findAllScheduleByPage(int currentPage);
    public List<ScheduleDTO> findScheduleByDepartmentId(Integer departmentId);
    public IPage<ScheduleDTO> findScheduleByName(String name,int currentPage);
    public boolean deleteScheduleById(Integer scheduleId);
    public boolean batchDeleteScheduleById(List<Integer> scheduleIds);
    public IPage<ScheduleDTO> findScheduleById(int doctorId,int currentPage);
}
