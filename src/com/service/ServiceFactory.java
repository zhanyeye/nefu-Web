package com.service;

import java.util.Optional;

import com.service.impl.NewsServiceImpl;

public class ServiceFactory {

	private static NewsService newsService;
	public static NewsService getNewsService() {
		return Optional.ofNullable(newsService)
				.orElseGet(() ->{
					newsService = new NewsServiceImpl();
					return newsService;}); 
	}
}
