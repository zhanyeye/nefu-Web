package com.entity;

import java.util.Date;

public class News {
	private int id;
	private String title;
	private String content;
	private String outline;
	private Date insertdate;
	
	public String getOutline() {
		return outline;
	}

	public void setOutline(String outline) {
		this.outline = outline;
	}
	
	public News() {
		
	}
	
	public News(int id, String title, String content, String outline) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.outline = outline;
	}
	
	public News(int id, String title, String content, String outline, Date insertdate) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.outline = outline;
		this.insertdate = insertdate;
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

	public Date getInsertdate() {
		return insertdate;
	}

	public void setInsertdate(Date insertdate) {
		this.insertdate = insertdate;
	}

	
}
