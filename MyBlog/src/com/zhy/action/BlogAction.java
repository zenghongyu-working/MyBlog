package com.zhy.action;

import com.zhy.model.MyPage;

public interface BlogAction {
	/**
	 * 访问首页
	 * @return
	 */
	public String index();

	/**
	 * 点击一篇文章，阅读文章
	 * @return
	 */
	public String readBlog();
	
	/**
	 * 取得Blog的总记录数
	 * @return
	 */
	public long getTotalCount();
	
	/**
	 * 取得第pageNum页
	 * @param pageNum 要取的页数
	 * @return
	 */
	public MyPage getPage(int pageNum);
}
