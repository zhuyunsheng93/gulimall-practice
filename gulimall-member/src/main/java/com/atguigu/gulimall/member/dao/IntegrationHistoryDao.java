package com.atguigu.gulimall.member.dao;

import com.atguigu.gulimall.member.entity.IntegrationHistoryEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 购物积分记录表
 * 
 * @author zhuyunsheng
 * @email zhuyunsheng93@gmail.com
 * @date 2021-07-22 11:48:07
 */
@Mapper
public interface IntegrationHistoryDao extends BaseMapper<IntegrationHistoryEntity> {
	
}
