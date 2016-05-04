package com.zhy.service;

import com.zhy.model.User;

public interface UserService {
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public boolean login(User user);
	
	/**
	 * 用户登出
	 * @param user
	 * @return
	 */
	public boolean add(User user);
	
	/**
	 * 判断当前用户的用户名是否唯一
	 * @param user 需要判断的用户
	 * @return
	 */
	public boolean isUniqueUser(User user);
}
