package com.zhy.dao;

import java.util.List;

public interface BaseDao <T>{
	public T getById(String id);
	public void add(T t);
	public void delete(T t);
	public void deleteById(String id);
	public List<T> findByHql(String hql,Object[] args);
	public List<Object> findObjectByHql(String hql,Object[] args);
	public void update(T t);
	public long getTotalCount(String hql);
}
