package com.zhy.dao;

import java.util.List;

public interface MyDaoSupport<T> {
	/**
	 * 根据id获取对象
	 * 
	 * @param id
	 * @return
	 */
	public T getById(String id);

	/**
	 * 添加对象
	 * 
	 * @param t
	 * @throws Exception
	 */
	public void add(T t);

	/**
	 * 删除对象
	 * 
	 * @param t
	 * @throws Exception
	 */
	public void delete(T t);

	/**
	 * 根据id删除对象
	 * 
	 * @param id
	 */
	public void deleteById(String id);

	/**
	 * 通过hql语句与相对应的参数值返回对象列表
	 * 
	 * @param hql
	 * @param args
	 * @return
	 */
	public List<T> findByHql(String hql, Object[] args);

	/**
	 * 通过hql语句与相对应的参数值返回对象列表
	 * 
	 * @param hql
	 * @param args
	 * @return
	 */
	public List<Object> findObjectByHql(String hql, Object[] args);

	/**
	 * 更新对象
	 * 
	 * @param t
	 */
	public void update(T t);

	/**
	 * 取得总的记录数
	 * 
	 * @param hql
	 * @return
	 */
	public long getTotalCount(String hql);
}
