package com.zhy.service;

import java.util.List;

import com.zhy.model.Time;

public interface TimeService {
	/**
	 * 返回所有的Time记录
	 * @return
	 */
	public List<Time> find();
}
