package com.zhy.service;

import java.util.List;

import com.zhy.dao.UserDao;
import com.zhy.model.User;

public class UserServiceImpl  implements UserService {

	/**
	 * 
	 */
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public boolean login(User user) {
		String hql = "from User u where u.username = ? and u.password = ?";
		Object[] args = { user.getUsername(), user.getPassword() };
		List<User> list = userDao.findByHql(hql,args);
		if (list.size() == 1)
			return true;
		return false;
	}

	@Override
	public boolean add(User user) {
		if (isUniqueUser(user)){
			userDao.add(user);
			return true;
		}
		return false;
	}

	@Override
	public boolean isUniqueUser(User user) {
		String hql = "from User where username = ?";
		Object[] args = {user.getUsername()};
		List<User> list = userDao.findByHql(hql, args);
		if (list.size() == 0)
			return true;
		return false;
	}

}
