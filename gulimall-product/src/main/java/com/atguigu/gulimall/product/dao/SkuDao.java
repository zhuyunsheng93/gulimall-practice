package com.atguigu.gulimall.product.dao;

import com.atguigu.gulimall.product.entity.SkuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * sku信息
 * 
 * @author zhuyunsheng
 * @email zhuyunsheng93@gmail.com
 * @date 2021-07-22 10:51:09
 */
@Mapper
public interface SkuDao extends BaseMapper<SkuEntity> {
	
}
