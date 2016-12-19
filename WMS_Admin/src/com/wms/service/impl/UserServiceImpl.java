package com.wms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wms.bean.User;
import com.wms.dao.UserDao;
import com.wms.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	public UserDao userDao;

	@Override
	public User login(User user) {
		return userDao.login(user);
	}
	
	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return userDao.addUser(user);
	}

	@Override
	public int upDate(User user) {
		// TODO Auto-generated method stub
		return userDao.upDate(user);
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return userDao.delete(id);
	}

	@Override
	public List<User> queryAll() {
		// TODO Auto-generated method stub
		return userDao.queryAll();
	}

	@Override
	public User queryById(User user) {
		// TODO Auto-generated method stub
		return userDao.queryById(user);
	}
}
