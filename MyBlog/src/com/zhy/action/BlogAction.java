package com.zhy.action;

import com.zhy.model.MyPage;

public interface BlogAction {
	public String index();

	public String readBlog();

	public long getTotalCount();
	
	public MyPage getPage(int pageNum);
}
