package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ManageServlet")
public class ManageServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    // TODO Auto-generated method stub
		    request.getRequestDispatcher("/WEB-INF/jsp/manage.jsp")
		    .forward(request, response);
		  }


}
