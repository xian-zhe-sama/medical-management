package com.es.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import com.es.entity.Pharmacist;


import org.apache.ibatis.annotations.Select;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author es
 * @since 2024-04-21
 */
public interface PharmacistMapper extends BaseMapper<Pharmacist> {
    @Select("SELECT p.* from account a left join pharmacist p on p.account_id = a.id where p.account_id=#{accountId} ")
    Pharmacist findPharmacistById(int accountId);
}
