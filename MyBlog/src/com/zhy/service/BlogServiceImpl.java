package com.zhy.service;

import java.util.List;

import com.zhy.dao.BlogDao;
import com.zhy.model.Blog;

public class BlogServiceImpl implements BlogService {
	private BlogDao blogDao;
	

	public BlogDao getBlogDao() {
		return blogDao;
	}


	public void setBlogDao(BlogDao blogDao) {
		this.blogDao = blogDao;
	}

	@Override
	public List<Blog> find() {
		return blogDao.find();
	}

	@Override
	public Blog get(String id) {
		return blogDao.get(id);
	}


	@Override
	public long getTotalCount() {
		return blogDao.getTotalCount();
	}


	@Override
	public List<Blog> findPage(int begin, int count) {
		return blogDao.findPage(begin, count);
	}

}
