package com.zhy.dao;

import java.util.List;

import com.zhy.model.Time;

public interface TimeDao extends BaseDao<Time> {
	/**
	 * 返回全部Time对象列表
	 * @return
	 */
	public List<Time> find();
}
