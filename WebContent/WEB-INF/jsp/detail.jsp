<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh">

<head>
    <base href="<%=basePath%>">
    <title>detail</title>
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

    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width:500px">
            <div class="modal-content">
                <form action="login" method="POST">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel"><i class="fa fa-user-o"></i> 管理员登录</h4>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-1 modalpic">
                                    <span><i class="fa fa-user-o"></i></span>
                                </div>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" name="username" placeholder="username">
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-1 modalpic">
                                    <span><i class="fa fa-keyboard-o"></i></span>
                                </div>
                                <div class="col-sm-3">
                                    <input type="password" class="form-control" name="password" placeholder="password">
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-primary">登录</button>
                    </div>
                </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

    <header class="navbar navbar-static-top bs-docs-nav" id="top">
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-navbar"
                    aria-controls="bs-navbar" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">新闻详情页 </a>
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
                <ul class="nav navbar-nav navbar-right">
                    <li><a data-toggle="modal" data-target="#myModal" data-target="bs-example-modal-sm">管理员登录</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="container">
        <div class=row>
            <div class="col-lg-12">
                <div class="bs-callout bs-callout-primary">
                    <h3>${news.title}</h3>
                </div>
            </div>
        </div>
        <div>
            <div class="col-lg-9 bs-callout bs-callout-success">
                ${news.content}
            </div>
            <div class="col-lg-3">
                <div class="bs-docs-sidebar">
                    <ul class="nav nav-list bs-docs-sidenav">
                        <c:forEach items="${newslist}" var="news" step="1">
                            <li><a href="GetNewsServlet?nid=${news.id}">${news.title}</a></li>
                        </c:forEach>
                    </ul>
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
    <script src="js/docs.min.js"></script>

</body>

</html>