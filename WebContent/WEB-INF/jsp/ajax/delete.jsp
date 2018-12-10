<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<ul style="list-style:none">
    <c:forEach items="${newslist}" var="news">
        <li>
            <label>
                <input type="checkbox" name="delete" value="${news.id}">
                ${news.insertdate} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ${news.title}
            </label>
        </li>
    </c:forEach>
</ul>