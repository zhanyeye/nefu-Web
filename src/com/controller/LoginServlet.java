package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.User;
import com.service.NewsService;
import com.service.ServiceFactory;
import com.service.UserService;



@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private UserService userService = new UserService();
	private NewsService newsService = ServiceFactory.getNewsService();


	// 转发登录页面请求
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("newslist", newsService.listNews());
		request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
	}

	// 验证成功重定向到welcome页面，失败重定向回登录页面
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 获取post传入的参数
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		// 由业务逻辑层组件处理具体的业务逻辑，serlvet不负责验证处理
		User user = userService.getUser(userName, password);
		String redPath = "/login";
		// 用户存在，置于session，跳转到welcome
		if (user != null) {
			request.getSession().setAttribute("user", user);
			redPath = "/ManageServlet";
		}
		// 不存在则跳转到login
		response.sendRedirect(request.getContextPath() + redPath);
	}

}
