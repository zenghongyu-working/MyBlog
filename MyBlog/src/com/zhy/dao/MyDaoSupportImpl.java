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
		if (id != null && !"".equals(id))
			return this.getHibernateTemplate().get(getClz(),
					Integer.valueOf(id));
		return null;
	}

	@Override
	public void add(T t)  {
		if (t != null)
			this.getHibernateTemplate().save(t);
	}

	@Override
	public void delete(T t){
		if (t != null)
			this.getHibernateTemplate().delete(t);
	}

	@Override
	public void deleteById(String id) {
		if (id != null && !"".equals(id)) {
			T t = getById(id);
			if (t != null)
				this.getHibernateTemplate().delete(t);
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByHql(String hql, Object[] args) {
		if (hql != null && !"".equals(hql) && args != null)
			return this.getHibernateTemplate().find(hql, args);
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object> findObjectByHql(String hql, Object[] args) {
		if (hql != null && !"".equals(hql) && args != null)
			return this.getHibernateTemplate().find(hql, args);
		return null;
	}

	@Override
	public void update(T t) {
		if (t != null)
			this.getHibernateTemplate().update(t);
	}

	@SuppressWarnings("unchecked")
	public long getTotalCount(String hql) {
		List<Long> list = null;
		if (hql != null && !"".equals(hql))
			list = this.getHibernateTemplate().find(hql);
		if (list != null && list.get(0) != null)
			return list.get(0);
		return 0;
	}
}
