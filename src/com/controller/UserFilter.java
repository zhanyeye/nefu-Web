package com.controller;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/ManageServlet")
public class UserFilter implements Filter {
	private static Logger logger = Logger.getLogger(UserFilter.class.getName());
	
	String[] exculde = new String[] { "/login" };
	
	  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
		      throws IOException, ServletException {

		    HttpServletRequest req = (HttpServletRequest) request;
		    for (String e : exculde) {
		      // 如果请求匹配排除表达式，则不过滤，即继续执行
		      if (e.equals(req.getServletPath())) {
		        logger.info("过滤排除");
		        chain.doFilter(request, response);
		      } else {
		        // 如果不匹配，则验证用户登录状态，未登录，重定向到登录页面
		        if (req.getSession().getAttribute("user") == null) {
		          logger.info("未登录访问：" + req.getServletPath());
		          HttpServletResponse res = (HttpServletResponse) response;
		          res.sendRedirect(req.getContextPath() + "/login");
		          return;
		        } else {
		          // 登录则不执行任何操作，向下传递
		          chain.doFilter(request, response);
		        }
		      }
		    }
		  }


}
