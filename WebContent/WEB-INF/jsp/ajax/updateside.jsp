<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="alert alert-warning" role="alert">请点击以下新闻进行修改</div>
<ul class="nav nav-list bs-docs-sidenav">
    <c:forEach items="${newslist}" var="news">
        <li><a class="ajax" href="AlterAjaxServlet?nid=${news.id}"><i class="icon-chevron-right"></i>${news.title}</a></li>
    </c:forEach>
</ul>