package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.NewsService;
import com.service.ServiceFactory;

@WebServlet("/ListNewsServlet")
public class ListNewsServlet extends HttpServlet {

	// 基于ServiceFactory工厂，获取单例的UserService组件
	private NewsService newsService = ServiceFactory.getNewsService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 实现加载全部用户，并转发至/WEB-INF/jsp/index.jsp

		req.setAttribute("newslist", newsService.listNews());
		req.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(req, resp);
	}

	private static final long serialVersionUID = 1L;

}
