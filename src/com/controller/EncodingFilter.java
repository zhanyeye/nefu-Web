package com.controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class EncodingFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
			throws IOException, ServletException {
		
		//拦截所有请求响应变量,统一请求响应编码
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		// 调用doFilter()方法，将 request/response 传递到下一个 过滤器
		//(或servlet JSP等目标资源)；即继续执行请求，不调用则请求将停止
		//FilterChain接口，由容器创建的过滤器链对象
		//多过滤器执行顺序，按过滤器命名字母顺序执行
		chain.doFilter(request, response);
		
		//多过滤器，正向调用，逆向回调
		//在chain.doFilter(request,response);后面的拦截回调
	}

}
