package com.atguigu.gulimall.product.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.atguigu.common.utils.PageUtils;
import com.atguigu.gulimall.product.entity.OrderEntity;

import java.util.Map;

/**
 * 订单
 *
 * @author zhuyunsheng
 * @email zhuyunsheng93@gmail.com
 * @date 2021-07-22 11:08:31
 */
public interface OrderService extends IService<OrderEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

