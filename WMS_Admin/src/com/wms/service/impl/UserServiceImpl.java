package com.wms.service.impl;

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
}
