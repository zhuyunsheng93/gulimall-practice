package com.zsy.ware.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zsy.common.utils.PageUtils;
import com.zsy.ware.entity.WareInfoEntity;

import java.util.Map;

/**
 * 仓库信息
 *
 * @author zsy
 * @email 1917222727@qq.com
 * @date 2019-10-08 09:59:40
 */
public interface WareInfoService extends IService<WareInfoEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

