package com.zzy.service;

import java.util.List;

import com.zzy.pojo.User;

public interface UserService {
	public void addUserService(User user);

	public List<User> selectUserListService();

	public User selectUserByUno(Integer uno);
}
