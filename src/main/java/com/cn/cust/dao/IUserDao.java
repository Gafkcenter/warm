package com.cn.cust.dao;

import java.util.ArrayList;

import com.cn.cust.entities.User;

/**
 * 
 * @author HuangMinghao 持久层，数据访问对象
 */
public interface IUserDao {	

	void save(User user);

	void update(User user);

	void delete(int id);

	User findById(int id);

	ArrayList<User> getAll();

}
