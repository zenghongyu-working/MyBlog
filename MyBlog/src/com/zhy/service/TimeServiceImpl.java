package com.zhy.service;

import java.util.List;

import com.zhy.dao.TimeDao;
import com.zhy.model.Time;

public class TimeServiceImpl implements TimeService {
	
	private TimeDao timeDao;

	public TimeDao getTimeDao() {
		return timeDao;
	}

	public void setTimeDao(TimeDao timeDao) {
		this.timeDao = timeDao;
	}

	@Override
	public List<Time> find() {
		return timeDao.find();
	}

}
