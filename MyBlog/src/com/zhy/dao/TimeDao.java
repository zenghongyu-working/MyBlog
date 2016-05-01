package com.zhy.dao;

import java.util.List;

import com.zhy.model.Time;

public interface TimeDao extends BaseDao<Time> {
	public List<Time> find();
}
