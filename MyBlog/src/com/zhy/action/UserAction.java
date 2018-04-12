package com.zhy.action;

public interface UserAction {
	/**
	 * 用户登录
	 * @return
	 */
	public String login();
	
	/**
	 * 添加用户
	 * @return
	 */
	public String add();
	
	/**
	 * 用户登出
	 * @return
	 */
	public String logout();
	
	/**
	 * 用户注册
	 * @return
	 */
	public String registerInput();
	
	/**
	 * 检查用户名是否存在
	 */
	public String checkUsername();
}
