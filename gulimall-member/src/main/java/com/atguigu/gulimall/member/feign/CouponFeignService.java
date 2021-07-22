package com.atguigu.gulimall.member.feign;

import com.atguigu.common.utils.R;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *  *@Description          
 *  *@Author  zhuyunsheng       //作者
 *  *@Date 2021/7/22 17:24      //创建时间
 **/
@FeignClient("gulimall-coupon")
public interface CouponFeignService {
    @RequestMapping("coupon/coupon/member/list")
    public R memberCoupons();
}
