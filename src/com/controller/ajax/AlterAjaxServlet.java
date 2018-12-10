package com.controller.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.NewsService;
import com.service.ServiceFactory;


@WebServlet("/AlterAjaxServlet")
public class AlterAjaxServlet extends HttpServlet {
	
	NewsService newsService = ServiceFactory.getNewsService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id= Integer.valueOf(request.getParameter("nid"));
		request.setAttribute("news", newsService.getNews(id));

		request.getRequestDispatcher("/WEB-INF/jsp/ajax/update.jsp")
		.forward(request, response);
	}
	private static final long serialVersionUID = 1L;
}
