package com.atguigu.gulimall.coupon.dao;

import com.atguigu.gulimall.coupon.entity.CouponEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 优惠券信息
 * 
 * @author zhuyunsheng
 * @email zhuyunsheng93@gmail.com
 * @date 2021-07-22 11:55:18
 */
@Mapper
public interface CouponDao extends BaseMapper<CouponEntity> {
	
}
