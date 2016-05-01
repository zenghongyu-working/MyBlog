package com.zhy.action;

public interface MessageBoardAction {
	/**
	 * 最开始页面
	 * @return
	 */
	public String index();
	
	/**
	 * 保存留言板信息
	 * @return
	 */
	public String saveInput();
}
