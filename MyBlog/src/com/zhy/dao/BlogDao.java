package com.zhy.dao;

import java.util.List;

import com.zhy.model.Blog;

public interface BlogDao extends BaseDao<Blog>{
	
	public List<Blog> find();
	public Blog get(String id);
	public long getTotalCount();
	public List<Blog> findPage(int begin,int count);
}
