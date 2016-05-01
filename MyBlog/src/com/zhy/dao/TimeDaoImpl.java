package com.zhy.dao;

import java.util.List;

import com.zhy.model.Time;

public class TimeDaoImpl extends BaseDaoImpl<Time> implements TimeDao {

	@Override
	public List<Time> find() {
		String hql = "from Time";
		Object[] args = {};
		return this.findByHql(hql, args);
	}

}
