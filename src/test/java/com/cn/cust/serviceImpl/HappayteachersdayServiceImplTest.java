package com.cn.cust.serviceImpl;

import static org.junit.Assert.*;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cn.cust.dao.HappayteachersdaysMapper;
import com.cn.cust.entities.Happayteachersdays;

@RunWith(SpringJUnit4ClassRunner.class)		// 表示繼承了 SpringJUnit4ClassRunner 類
@ContextConfiguration("classpath:spring-mybatis.xml")
public class HappayteachersdayServiceImplTest {
	@Resource
	HappayteachersdaysMapper happayteachersdaysMapper;

	@Test
	public void testSaveInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testListTop20() {
		List<Happayteachersdays> data = happayteachersdaysMapper.selectAll();
		if(data != null && data.size()>0){
			System.out.println(data);
		}else{
		System.out.println("没有查到信息");
		}
	}

}
