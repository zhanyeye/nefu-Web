package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.NewsService;
import com.service.ServiceFactory;

@WebServlet("/AddNewsServlet")
public class AddNewsServlet extends HttpServlet {
	  // 基于ServiceFactory工厂，获取单例的UserService组件
	  private NewsService newsService = ServiceFactory.getNewsService();
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // TODO Auto-generated method stub
	    // 获取请求参数，调用userService组件完成持久化操作，重定向到ListUserServlet
	    String title = request.getParameter("title");
	    String outline = request.getParameter("outline");
	    String content = request.getParameter("content");

	    newsService.addNews(title, outline, content);

	  }

	private static final long serialVersionUID = 1L;

}
