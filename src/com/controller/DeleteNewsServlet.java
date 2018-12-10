package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.NewsService;
import com.service.ServiceFactory;

@WebServlet("/DeleteNewsServlet")
public class DeleteNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private NewsService newsService = ServiceFactory.getNewsService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("DeleteNewsServlet");

		String del[] = request.getParameterValues("delete");
		for (int i = 0; i < del.length; i++) {
			System.out.println(del[i]);

			newsService.deteleNews(Integer.parseInt(del[i]));
		}

	}

}
