package com.zhy.model;

import java.util.Date;

/**
 * MessageBoard entity. @author MyEclipse Persistence Tools
 */

public class MessageBoard implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String detail;
	private Date date;

	// Constructors

	/** default constructor */
	public MessageBoard() {
	}

	public MessageBoard(String detail, Date date) {
		super();
		this.detail = detail;
		this.date = date;
	}

	/** full constructor */
	public MessageBoard(Integer id, String detail, Date date) {
		this.id = id;
		this.detail = detail;
		this.date = date;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}