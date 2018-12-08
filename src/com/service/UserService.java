package com.service;

import com.entity.User;

public class UserService {
	// 模拟从数据库查询出相应用户信息
	public User getUser(String userName, String password) {
		User user = null;
		// 假设数据库中包含相应用户
		if ("zhanyeye".equals(userName) && "123456".equals(password)) {
			user = new User();
			user.setName("詹泽晔");
		}
		return user;
	}

}
