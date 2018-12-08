package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.NewsService;
import com.service.ServiceFactory;

@WebServlet("/GetNewsServlet")
public class GetNewsServlet extends HttpServlet {

		// 基于ServiceFactory工厂，获取单例的UserService组件
		private NewsService newsService = ServiceFactory.getNewsService();
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			// 获取指定ID用户的详细信息
			int id = Integer.valueOf(request.getParameter("nid"));
		    request.setAttribute("news", newsService.getNews(id));
		    request.setAttribute("newslist", newsService.listNews());
			request.getRequestDispatcher("/WEB-INF/jsp/detail.jsp")
			.forward(request, response);
		}
		private static final long serialVersionUID = 1L;
}
