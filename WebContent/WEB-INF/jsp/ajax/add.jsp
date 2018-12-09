<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="bs-docs-sidebar">
    <ul class="nav nav-list bs-docs-sidenav">
        <c:forEach items="${newslist}" var="news">
            <li><a href="GetNewsServlet?nid=${news.id}"><i class="icon-chevron-right"></i>${news.title}</a></li>
        </c:forEach>
    </ul>
</div>