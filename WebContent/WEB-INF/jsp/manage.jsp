<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">

<head>

    <title>manage</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/docs.css">
    <link rel="stylesheet" href="css/bs-callout.css">
    <link rel="stylesheet" href="css/bs-docs.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/templatemo-style.css">

</head>

<body style="padding-top: 0px;">
    <header class="navbar navbar-static-top bs-docs-nav" id="top">
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-navbar"
                    aria-controls="bs-navbar" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">后台管理</a>
            </div>
            <nav id="bs-navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="ListNewsServlet">首页</a></li>
                    <li><a href="ListNewsServlet#feature">关于我们</a></li>
                    <li class="active"><a href="ListNewsServlet#news">新闻公告</a></li>
                    <li><a href="ListNewsServlet#team">教师队伍</a></li>
                    <li><a href="ListNewsServlet#courses">实验室</a></li>
                    <li><a class="reddot" href="ListNewsServlet#testimonial">学生就业</a></li>
                </ul>
                <%-- <ul class="nav navbar-nav navbar-right">
                    <li><a data-toggle="modal" data-target="#myModal" data-target="bs-example-modal-sm">管理员登录</a></li>
                </ul> --%>
            </nav>
        </div>
    </header>

    <div class="container">

        <div class=row>
            <div class="col-lg-12">
                <div class="alert alert-success">
                    <h3>NEFU software Engineering</h3>
                </div>
                <div class="alert alert-info">
                    <h3>东北林业大学 &nbsp;软件工程</h3>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <!-- Nav tabs -->
                <ul id="newsTabs" class="nav nav-tabs" role="tablist">
                    <li class="active"><a id="add_tab_a" href="#softwarenews" data-toggle="tab">发布新闻</a></li>
                    <li><a id="update_tab_a" href="#notification" data-toggle="tab">修改新闻</a></li>
                    <li><a id="delete_tab_a" href="#picture" data-toggle="tab">删除新闻</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- 添加 -->
                    <div class="tab-pane active" id="softwarenews">

                        <div class="col-lg-9 bs-callout bs-callout-info" style="margin-top: 0px;">
                            <br />
                            <form id="addform" class="form-horizontal" action="AddNewsServlet" method="POST">
                                <div class="form-group">
                                    <label for="title" class="col-sm-1 control-label">标题</label>
                                    <div class="col-sm-10">
                                        <input type="text" id="add_title_input" name="title" class="form-control"
                                            placeholder="Title">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="outline" class="col-sm-1 control-label">摘要</label>
                                    <div class="col-sm-10">
                                        <input type="text" id="add_outline_input" name="outline" class="form-control"
                                            placeholder="Outline">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="content" class="col-sm-1 control-label">内容</label>
                                    <div class="col-sm-10">
                                        <textarea name="content" id="add_content_input" class="form-control" rows="20"
                                            placeholder="Content"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-10 col-sm-10">
                                        <button class="add_ajax" type="button" class="btn btn-default">提交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div id="add" class="col-lg-3">
                            <div class="bs-docs-sidebar">
                                <ul class="nav nav-list bs-docs-sidenav">
                                    <c:forEach items="${newslist}" var="news">
                                        <li><a href="GetNewsServlet?nid=${news.id}"><i class="icon-chevron-right"></i>${news.title}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- 修改 -->
                    <div class="tab-pane " id="notification">

                        <div id="update" class="col-lg-9 bs-callout bs-callout-success" style="margin-top: 0px;">
                            <br />
                            <form id="updateform" class="form-horizontal" action="UpdateNewsServlet" method="POST">
                                <div class="form-group">
                                    <label for="title" class="col-sm-1 control-label">标题</label>
                                    <div class="col-sm-10">
                                        <input type="hidden" id="update_id_input" name="newid" value="${news.id}">
                                        <input type="text" name="title" class="form-control" value="${news.title}"
                                            placeholder="Title">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="outline" class="col-sm-1 control-label">摘要</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="outline" class="form-control" value="${news.outline}"
                                            placeholder="Outline">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="content" class="col-sm-1 control-label">内容</label>
                                    <div class="col-sm-10">
                                        <textarea name="content" class="form-control" rows="20" placeholder="Content">${news.content}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-10 col-sm-10">
                                        <button id="update_ajax" type="button" class="btn btn-default">修改</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-3">
                            <div id="alterside" class="bs-docs-sidebar">
                                <div class="alert alert-warning" role="alert">请点击以下新闻进行修改</div>
                                <ul class="nav nav-list bs-docs-sidenav">
                                    <c:forEach items="${newslist}" var="news">
                                        <li><a class="ajax" href="AlterAjaxServlet?nid=${news.id}"><i class="icon-chevron-right"></i>${news.title}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>

                    </div>

                    <!-- 删除 -->
                    <div class="tab-pane " id="picture" style="margin-top: 0px;">
                        <form id="deleteform" action="DeleteNewsServlet" method="GET">
                            <div class="col-lg-7 bs-callout bs-callout-warning" style="margin-top: 0px;">
                                <div id="del" class="checkbox" style="height: 300px; overflow:auto;">
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
                                </div>
                            </div>

                            <div class="col-lg-3 col-lg-offset-1">
                                <br /><br /><br />
                                <button type="button" class="delete_ajax btn btn-info"> 删除 </button>
                            </div>

                        </form>

                    </div>

                </div>
            </div>


        </div>

    </div>

    <!-- SCRIPTS -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/ajax.js"></script>

</body>

</html>