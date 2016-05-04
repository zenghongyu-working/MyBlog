package com.zhy.action;

public interface MessageBoardAction {
	/**
	 * 访问首页
	 * @return
	 */
	public String index();
	
	/**
	 * 保存用户发来的消息
	 * @return
	 */
	public String saveInput();
}
