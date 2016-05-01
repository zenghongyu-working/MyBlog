package com.zhy.model;

import java.util.Date;

/**
 * Time entity. @author MyEclipse Persistence Tools
 */

public class Time implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Date date;
	private String detail;

	// Constructors

	/** default constructor */
	public Time() {
	}

	public Time(Date date, String detail) {
		super();
		this.date = date;
		this.detail = detail;
	}

	/** full constructor */
	public Time(Integer id, Date date, String detail) {
		this.id = id;
		this.date = date;
		this.detail = detail;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

}