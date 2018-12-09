package com.entity;

import java.util.Date;

public class News {
	private int id;
	private String title;
	private String content;
	private String outline;
	public String getOutline() {
		return outline;
	}

	public void setOutline(String outline) {
		this.outline = outline;
	}

	private Date insertDate;
	
	public News() {
		
	}
	
	public News(int id, String title, String content, String outline) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.outline = outline;

	}
	
	public News(int id, String title, String content, String outline, Date insertDate) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.outline = outline;
		this.insertDate = insertDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}
	
}
