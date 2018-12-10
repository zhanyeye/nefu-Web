package com.controller.ajax;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.NewsService;
import com.service.ServiceFactory;

@WebServlet("/DeleteAjaxServlet")
public class DeleteAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	NewsService newsService = ServiceFactory.getNewsService();
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("newslist", newsService.listNews());
		request.getRequestDispatcher("/WEB-INF/jsp/ajax/delete.jsp").forward(request, response);
	}

}
