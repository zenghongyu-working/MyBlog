package com.zhy.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.zhy.model.Blog;

public class BlogDaoImpl extends BaseDaoImpl<Blog> implements BlogDao {

	@Override
	public List<Blog> find() {
		String hql = "from Blog";
		Object[] args = {};
		return this.findByHql(hql, args);
	}

	@Override
	public Blog get(String id) {
		return this.getById(id);
	}

	public long getTotalCount() {
		return super.getTotalCount("select count(*) from Blog");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Blog> findPage(final int begin, final int count) {
		final int newBegin;
		final int newCount;
		if (begin > 0)
			newBegin = begin;
		else
			newBegin = 0;
		if (count > 0)
			newCount = count;
		else
			newCount = 0;
		final String hql = "from Blog";
		return this.getHibernateTemplate().executeFind(
				new HibernateCallback<List<Blog>>() {

					@Override
					public List<Blog> doInHibernate(Session arg0)
							throws HibernateException, SQLException {
						Query query = arg0.createQuery(hql);
						query.setFirstResult(newBegin);
						query.setMaxResults(newCount);
						return query.list();
					}
				});
	}

}
