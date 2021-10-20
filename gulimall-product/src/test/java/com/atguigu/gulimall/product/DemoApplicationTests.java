package com.atguigu.gulimall.product;


import com.atguigu.gulimall.product.entity.BrandEntity;
import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class GulimallProductApplicationTests {

	@Test
	void contextLoads() {
		BrandEntity brandEntity = new BrandEntity();
		brandEntity.setRemark("remark");
	}

}
