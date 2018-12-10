package com.service;

import java.util.List;

import com.entity.News;

public interface NewsService {

	// 查询新闻
	public List<News> listNews();

	// 添加新闻
	public void addNews(String title, String outline, String content);

	// 更改新闻
	public void updateNews(News news);

	// 获取指定新闻
	public News getNews(int id);
	
	//删除指定新闻
	public void deteleNews(int id);
}
