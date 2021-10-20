package com.atguigu.gulimall.product.dao;

import com.atguigu.gulimall.product.entity.OrderEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 订单
 * 
 * @author zhuyunsheng
 * @email zhuyunsheng93@gmail.com
 * @date 2021-07-22 11:08:31
 */
@Mapper
public interface OrderDao extends BaseMapper<OrderEntity> {
	
}
