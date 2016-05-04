package com.zhy.service;

import java.util.List;

import com.zhy.model.Blog;

public interface BlogService {
	/**
	 * 根据id获取Blog对象
	 * @param id
	 * @return
	 */
	public Blog get(String id);
	
	/**
	 * 取得全部的Blog对象
	 * @return
	 */
	public List<Blog> find();
	
	/**
	 * 得到总记录数
	 * @return
	 */
	public long getTotalCount();
	
	/**
	 * 根据开始位置与数量返回一页Blog的数量的列表
	 * @param begin Blog在数据库中的行号
	 * @param count 返回的数量
	 * @return
	 */
	public List<Blog> findPage(int begin, int count);
}
