package com.zhy.dao;

import java.util.List;

public class BaseDaoImpl<T> extends MyDaoSupportImpl<T> implements BaseDao<T> {
	

	@Override
	public T getById(String id) {
		return super.getById(id);
	}

	@Override
	public void add(T t) {
		super.add(t);
	}

	@Override
	public void delete(T t) {
		super.delete(t);
	}

	@Override
	public void deleteById(String id) {
		super.deleteById(id);
	}

	@Override
	public List<T> findByHql(String hql, Object[] args) {
		return super.findByHql(hql, args);
	}

	@Override
	public List<Object> findObjectByHql(String hql, Object[] args) {
		return super.findObjectByHql(hql, args);
	}

	@Override
	public void update(T t) {
		super.update(t);
	}

	public long getTotalCount(String hql){
		return super.getTotalCount(hql);
	}
}
