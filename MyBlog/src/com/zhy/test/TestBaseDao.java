package com.zhy.test;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zhy.dao.BaseDao;
import com.zhy.model.Time;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class TestBaseDao {
	@Autowired
	private BaseDao<Time> baseDao;

	public BaseDao<Time> getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao<Time> baseDao) {
		this.baseDao = baseDao;
	}

	@Test
	public void testBaseDao() {
		Time time = new Time(new Date(), "hehe");
		System.out.println(baseDao);
		baseDao.add(time);
		// MyDaoSupport<Time> dao = new MyDaoSupportImpl<Time>();
	}
}
