package com.atguigu.gulimall.member.dao;

import com.atguigu.gulimall.member.entity.UserCollectShopEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 关注店铺表
 * 
 * @author zhuyunsheng
 * @email zhuyunsheng93@gmail.com
 * @date 2021-07-22 11:48:07
 */
@Mapper
public interface UserCollectShopDao extends BaseMapper<UserCollectShopEntity> {
	
}
