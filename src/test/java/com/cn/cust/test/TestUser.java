package com.cn.cust.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cn.cust.entities.User;
import com.cn.cust.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)		// 表示繼承了 SpringJUnit4ClassRunner 類
@ContextConfiguration("classpath:spring-mybatis.xml")
public class TestUser {

	@Resource	
	private IUserService userService;
	
	@Test
	public void testGetUserName() {
		User user = userService.getUserById(1);
		System.out.println("成功！！" + user.getUserName());
	}
	
}
