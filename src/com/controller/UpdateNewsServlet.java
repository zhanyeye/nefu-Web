package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;

@WebServlet("/UpdateNewsServlet")
public class UpdateNewsServlet extends HttpServlet {
	  private NewsService newsService = ServiceFactory.getNewsService();
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // TODO Auto-generated method stub
	    // 
	    int id = Integer.valueOf(request.getParameter("newid"));
	    String title = request.getParameter("title");
	    String outline = request.getParameter("outline");
	    String content = request.getParameter("content");

	    News news = new News(id, title, content, outline);
	    newsService.updateNews(news);
//	    response.sendRedirect(request.getContextPath() + "/ManageServlet");
	    
	  }
	  private static final long serialVersionUID = 1L;

}
