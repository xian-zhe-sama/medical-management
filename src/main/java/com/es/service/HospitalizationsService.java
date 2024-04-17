package com.es.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.es.entity.Hospitalizations;
import com.es.entity.dto.HospitalizationsDTO;

import java.util.List;


/**
 * <p>
 *  服务类
 * </p>
 *
 * @author es
 * @since 2024-04-15
 */
public interface HospitalizationsService extends IService<Hospitalizations> {
    public boolean saveHospitalizationsOne(Hospitalizations hospitalizations);
    public boolean deleteHospitalizationsById(Integer patientId);
    public boolean batchDeleteHospitalizationsById(List<Integer> patientIds);
    public IPage<HospitalizationsDTO> findAllHospitalizationsByPage(int currentPage);
    public IPage<HospitalizationsDTO> findHospitalizationsByName(String name,int currentPage);
}
