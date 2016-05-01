package com.zhy.service;

import com.zhy.model.User;

public interface UserService {
	public boolean login(User user);
	public boolean add(User user);
	public boolean isUniqueUser(User user);
}
