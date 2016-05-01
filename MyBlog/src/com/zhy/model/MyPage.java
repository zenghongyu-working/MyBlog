package com.zhy.model;

import java.util.List;

public class MyPage {
	private int currentPage;
	private long totalCount;
	private int totalPage;
	private static int pageSize = 3;
	private List<Blog> list;

	public MyPage(int currentPage, long totalCount, List<Blog> list) {
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.totalPage = (int) Math.ceil((double)totalCount / pageSize);
		this.list = list;
	}

	public MyPage() {
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public List<Blog> getList() {
		return list;
	}

	public void setList(List<Blog> list) {
		this.list = list;
	}

	public static int getPageSize() {
		return pageSize;
	}

	public static void setPageSize(int pageSize) {
		MyPage.pageSize = pageSize;
	}

}
