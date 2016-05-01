package com.zhy.service;

import java.util.List;

import com.zhy.model.Blog;

public interface BlogService {
	public Blog get(String id);
	public List<Blog> find();
	public long getTotalCount();
	public List<Blog> findPage(int begin, int count);
}
