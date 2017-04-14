package com.zzy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zzy.dao.UserDao;
import com.zzy.pojo.User;
import com.zzy.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;
	public void addUserService(User user) {
		// TODO Auto-generated method stub
		userDao.insertnewUser(user);
	}
	public List<User> selectUserListService() {
		// TODO Auto-generated method stub
		return userDao.selectAll();
		
	}
	public User selectUserByUno(Integer uno) {
		// TODO Auto-generated method stub
		return userDao.selectUserByUno(uno);
	}

}
