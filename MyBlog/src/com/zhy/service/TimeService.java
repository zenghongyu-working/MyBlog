package com.zhy.service;

import java.util.List;

import com.zhy.model.Time;

public interface TimeService {
	/**
	 * 返回Time中的全部数据
	 * @return
	 */
	public List<Time> find();
}
