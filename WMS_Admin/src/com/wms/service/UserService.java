package com.wms.service;

import java.util.List;

import com.wms.bean.User;

public interface UserService {

	User login(User user);
	
	public int addUser(User user);
	
	public int upDate(User user);
	
	public int delete(String id);
	
	public List<User> queryAll();
	
	public User queryById(User user);
	
}
