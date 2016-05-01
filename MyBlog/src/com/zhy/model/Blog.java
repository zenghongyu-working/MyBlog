package com.zhy.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Blog entity. @author MyEclipse Persistence Tools
 */

public class Blog implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String title;
	private String content;
	private Date date;
	private String classification;
	private Set<Reply> replies = new HashSet<Reply>(0);

	// Constructors

	/** default constructor */
	public Blog() {
	}

	/** minimal constructor */
	public Blog(Integer id, String title, String content, Date date) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
	}

	/** full constructor */
	public Blog(Integer id, String title, String content, Date date,
			String classification, Set<Reply> replies) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
		this.classification = classification;
		this.replies = replies;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getClassification() {
		return this.classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public Set<Reply> getReplies() {
		return this.replies;
	}

	public void setReplies(Set<Reply> replies) {
		this.replies = replies;
	}

}