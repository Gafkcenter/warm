package com.cn.cust.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.cust.dao.IUserDao;
import com.cn.cust.entities.User;
import com.cn.cust.service.IUserService;



@Service("userService")
public class UserServiceImpl implements IUserService {

	@Resource
	private IUserDao userDao;
	
	public User getUserById(int userId) {		
		return this.userDao.findById(userId);
	}

}
