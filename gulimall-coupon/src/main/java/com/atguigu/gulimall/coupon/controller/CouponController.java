package com.atguigu.gulimall.coupon.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

//import org.apache.shiro.authz.annotation.RequiresPermissions;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.atguigu.gulimall.coupon.entity.CouponEntity;
import com.atguigu.gulimall.coupon.service.CouponService;
import com.atguigu.common.utils.PageUtils;
import com.atguigu.common.utils.R;


/**
 * 优惠券信息
 *
 * @author zhuyunsheng
 * @email zhuyunsheng93@gmail.com
 * @date 2021-07-22 11:55:18
 */
@RefreshScope
@RestController
@RequestMapping("coupon/coupon")
@Slf4j
@Data
public class CouponController {
    @Autowired
    private CouponService couponService;
    private String name;
    @Value("${coupon.user.age}")
    private Integer age;
    public List<Integer> test() {
        User user1 = new User("朱运升",1);
        User user2 = new User(null,null);
        User user3 = null;
        List<User> users = new ArrayList<>();
        users.add(user1);
        users.add(user2);
        users.add(user3);
        return users.stream().map(User::getAge).collect(Collectors.toList());
    }
    class User{
        private String name;
        private Integer age;
        public User(String name,Integer age){
            this.name = name;
            this.age = age;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public Integer getAge() {
            return age;
        }

        public void setAge(Integer age) {
            this.age = age;
        }
    }
    /**
     * 列表
     */
    @RequestMapping("/test")
    //@RequiresPermissions("coupon:coupon:list")
    public R test(@RequestParam Map<String, Object> params) {
        PageUtils page = couponService.queryPage(params);
        LocalDate date = LocalDate.now().minusDays(1 - 1);
        LocalDateTime poolDate = LocalDateTime.of(date, LocalTime.MIN);
        return R.ok().put("name", name).put("age",age).put("test","").put("date",poolDate);
    }

    /**
     * 列表
     */
    @RequestMapping("/list")
    //@RequiresPermissions("coupon:coupon:list")
    public R list(@RequestParam Map<String, Object> params) {
        PageUtils page = couponService.queryPage(params);

        return R.ok().put("page", page);
    }

    /**
     * 测试feign调用列表
     */
    @RequestMapping("member/list")
    //@RequiresPermissions("coupon:coupon:list")
    public R memberlist(@RequestParam Map<String, Object> params) {
        log.info("进入优惠券服务方法");
        CouponEntity couponEntity = new CouponEntity();
        couponEntity.setCouponName("满100减10");//优惠券的名字
        return R.ok().put("coupons", Arrays.asList(couponEntity));
    }

    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    //@RequiresPermissions("coupon:coupon:info")
    public R info(@PathVariable("id") Long id) {
        CouponEntity coupon = couponService.getById(id);

        return R.ok().put("coupon", coupon);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    //@RequiresPermissions("coupon:coupon:save")
    public R save(@RequestBody CouponEntity coupon) {
        couponService.save(coupon);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    //@RequiresPermissions("coupon:coupon:update")
    public R update(@RequestBody CouponEntity coupon) {
        couponService.updateById(coupon);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    //@RequiresPermissions("coupon:coupon:delete")
    public R delete(@RequestBody Long[] ids) {
        couponService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
