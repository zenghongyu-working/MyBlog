package com.zhy.dao;

import java.util.List;
import java.lang.reflect.ParameterizedType;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MyDaoSupportImpl<T> extends HibernateDaoSupport implements
		MyDaoSupport<T> {
	private Class<T> clz;

	@SuppressWarnings("unchecked")
	private Class<T> getClz() {
		if (clz == null) {
			clz = ((Class<T>) (((ParameterizedType) (this.getClass()
					.getGenericSuperclass())).getActualTypeArguments()[0]));
		}
		return clz;
	}

	@Override
	public T getById(String id) {
		return this.getHibernateTemplate().get(getClz(), Integer.valueOf(id));
	}

	@Override
	public void add(T t) {
		this.getHibernateTemplate().save(t);
	}

	@Override
	public void delete(T t) {
		this.getHibernateTemplate().delete(t);
	}

	@Override
	public void deleteById(String id) {
		T t = getById(id);
		this.getHibernateTemplate().delete(t);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByHql(String hql, Object[] args) {
		return this.getHibernateTemplate().find(hql, args);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> findObjectByHql(String hql, Object[] args) {
		return this.getHibernateTemplate().find(hql, args);
	}

	@Override
	public void update(T t) {
		this.getHibernateTemplate().update(t);
	}
	
	@SuppressWarnings("unchecked")
	public long getTotalCount(String hql){
		List <Long> list = this.getHibernateTemplate().find(hql);
		return list.get(0);
	}

	
	
}
