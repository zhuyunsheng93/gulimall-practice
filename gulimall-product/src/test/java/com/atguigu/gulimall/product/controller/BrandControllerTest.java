package com.atguigu.gulimall.product.controller;

import com.atguigu.gulimall.product.entity.BrandEntity;
import com.atguigu.gulimall.product.service.BrandService;
import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;
import javax.annotation.Resource;
import java.util.Collection;



@SpringBootTest
class BrandControllerTest {
    @Resource
    BrandService brandService;
    @Test
    void contextLoads(){
        BrandEntity brandEntity = new BrandEntity();
        brandEntity.setDescript("哈哈1哈");
        brandEntity.setName("华为");
        brandService.save(brandEntity);
        System.out.println("保存成功");
    }
    @Test
    void getAll(){
        Collection<BrandEntity> list =  brandService.list();
        list.forEach(item-> System.out.println(item));
    }

}