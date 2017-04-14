package com.zzy.dao;

import java.util.List;

import com.zzy.pojo.User;

public interface UserDao {
	public void insertnewUser(User user);

	public List<User> selectAll();

	public User selectUserByUno(Integer uno);
}
