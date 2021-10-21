package com.zsy.member.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zsy.common.utils.PageUtils;
import com.zsy.member.entity.MemberStatisticsInfoEntity;

import java.util.Map;

/**
 * 会员统计信息
 *
 * @author zsy
 * @email 1917222727@qq.com
 * @date 2019-10-08 09:47:05
 */
public interface MemberStatisticsInfoService extends IService<MemberStatisticsInfoEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

