<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>东北林业大学 软件工程</title>
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

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/templatemo-style.css">

</head>

<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

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

    <!-- PRE LOADER -->
    <section class="preloader">
        <div class="spinner">

            <span class="spinner-rotate"></span>

        </div>
    </section>


    <!-- 菜单 -->
    <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- 导航栏头部 -->
            <div class="navbar-header">
                <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                </button>

                <!-- lOGO -->
                <a href="ListNewsServlet" class="navbar-brand">东北林业大学 软件工程</a>
            </div>

            <!-- 菜单 连接 -->
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-nav-first">
                    <li><a href="#top" class="smoothScroll">专业首页</a></li>
                    <li><a href="#feature" class="smoothScroll">关于我们</a></li>
                    <li><a href="#news" class="smoothScroll">新闻公告</a></li>
                    <li><a href="#team" class="smoothScroll">教师队伍</a></li>
                    <li><a href="#courses" class="smoothScroll">实验室</a></li>
                    <li><a href="#testimonial" class="smoothScroll">学生就业</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a data-toggle="modal" data-target="#myModal"><i class="fa fa-user-o"></i> 管理员登录</a></li>
                </ul>
            </div>

        </div>
    </section>


    <!-- 首页 -->
    <section id="home">
        <div class="row" style="position:relaitve;">
            <!-- 轮播图 -->
            <div class="owl-carousel owl-theme home-slider">
                <div class="item item-first">
                    <div class="caption">
                        <div class="container">
                            <div class="col-md-6 col-sm-12">
                                <h1>NEFU software Engineering</h1>
                                <h3>Our courses are designed to fit in your industry supporting all-round with latest technologies.</h3>
                                <a href="#feature" class="section-btn btn btn-default smoothScroll">专业介绍</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item item-second">
                    <div class="caption">
                        <div class="container">
                            <div class="col-md-6 col-sm-12">
                                <h1>NEFU software Engineering</h1>
                                <h3>Our courses are designed to fit in your industry supporting all-round with latest technologies.</h3>
                                <a href="#courses" class="section-btn btn btn-default smoothScroll">实验室</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item item-third">
                    <div class="caption">
                        <div class="container">
                            <div class="col-md-6 col-sm-12">
                                <h1>NEFU software Engineering</h1>
                                <h3>Our courses are designed to fit in your industry supporting all-round with latest technologies.</h3>
                                <a href="#team" class="section-btn btn btn-default smoothScroll">师资力量</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 信息展示 -->
            <section id="exhibition" style="padding: 0px;position:relaitve; z-index:3; bottom:100px ">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">

                            <!-- 滑动栏 -->
                            <div class="owl-carousel owl-theme owl-exhibition">

                                <c:forEach items="${newslist}" var="news">
                                    <div class="col-md-4 col-sm-4">
                                        <div class="item">
                                            <div class="exhibition-thumb">
                                                <div class="exhibition-detail">
                                                    <span><a href="GetNewsServlet?nid=${news.id}">${news.title}</a></span>
                                                    <p>${news.outline}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>



                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </section>


    <!-- 专业介绍 -->
    <section id="feature">
        <div class="container" style="padding-top: 0px">
            <div class="row">

                <div class="col-md-4 col-sm-4">
                    <div class="feature-thumb">
                        <span>01</span>
                        <h3>专业介绍</h3>
                        <p>软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，掌握扎实的基础理论和专业知识，具有软件分析、设计、开发、测试与管理能力，具备较强工程实践能力、技术创新能力和团队精神，能快速适应软件工程新技术发展并具有国际视野和国际竞争力的高级软件工程师。专业实施灵活的“211”人才培养模式（其中,2年基础教育,1年面向企业的专业教育,1年企业岗位实习），在教学上着力推动基于问题、基于项目和基于案例的学习，对于实践性强的课程，采取校企联合“双师制”培养，同时以大学生创新实践活动、科技大赛为补充，突出工程化培养</p>
                    </div>
                </div>

                <div class="col-md-4 col-sm-4">
                    <div class="feature-thumb">
                        <span>02</span>
                        <h3>教师队伍</h3>
                        <p>教师队伍采用专兼结合的用人机制，现有专职教师11人，其中高级职称6人，讲师5人，博士及在读博士7人，硕士4人，其中5人具有国外留学或访学经历，此外,专业还从国内外软件企业、高校聘请兼职教师承担部分教学工作作为补充。专业教师主持或参加了多项国家、省、部、市及学校的纵向、横向科研和教研项目。获得省优秀教育科研成果奖一等奖、省优秀高等教育科学研究成果二等奖、省科技进步二等奖、三等奖、省高等教育学会十一五规划课题三等奖等奖项。取得发明专利和实用新型专利8项，软件著作权10余项。发表论文50余篇，其中EI及ISTP检索论文30余篇。</p>
                    </div>
                </div>

                <div class="col-md-4 col-sm-4">
                    <div class="feature-thumb">
                        <span>03</span>
                        <h3>实习基地</h3>
                        <p>软件工程专业综合实验室，服务于专业的课程实验，培养学生获得软件项目管理和开发经验，完成系统开发的实习、实训。软件工程专业综合实验室下设软件工程实验室、嵌入式技术实验室、移动开发实验室和IOS开发实验室。主要完成基于行业标准和技术的Rational统一过程和测试、软件体系结构、软件测试和质量保证、移动开发和IOS开发等课程的实验。同时，依托国家级大型软件企业，建立校企合作的实习、实训基地。利用企业项目对学生进行有针对性的能力培训，专业目前已经建立了沈阳东软、亿阳信通股份有限公司、中关村软件园、大连软件信息产业园等实习基地。</p>
                    </div>
                </div>

            </div>
        </div>
    </section>


    <!-- 新闻公告 -->
    <section id="news" style="padding-bottom: 150px;">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-1">
                <div>
                    <!-- Nav tabs -->
                    <ul id="newsTabs" class="nav nav-tabs" role="tablist">
                        <li class="active"><a href="#softwarenews" data-toggle="tab">专业新闻</a></li>
                        <li><a href="#notification" data-toggle="tab">通知</a></li>
                        <li><a href="#picture" data-toggle="tab">专业风采</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">

                        <div class="tab-pane active" id="softwarenews">
                            <div style="overflow:auto;height: 300px;">
                                <ul class="list-group">
                                    <c:forEach items="${newslist}" var="n">
                                        <li class="list-group-item "><span><fmt:formatDate pattern="yyyy-MM-dd" value="${n.insertdate }"/></span> &nbsp;&nbsp;&nbsp;&nbsp;  <a href="GetNewsServlet?nid=${n.id}">${n.title}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>

                        <div class="tab-pane" id="notification">
                            <div style="overflow:auto;height: 300px;">
                                <ul class="list-group">
                                    <c:forEach items="${newslist}" var="n">
                                        <li class="list-group-item "><a href="GetNewsServlet?nid=${n.id}">${n.title}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>

                        <div class="tab-pane" id="picture">
                            <div id="carousel-pic" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-pic" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-pic" data-slide-to="1"></li>
                                    <li data-target="#carousel-pic" data-slide-to="2"></li>
                                </ol>

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <img src="images/a001.jpg" alt="...">
                                        <div class="carousel-caption">
                                            ...
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="images/a002.jpg" alt="...">
                                        <div class="carousel-caption">
                                            ...
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="images/a003.jpg" alt="...">
                                        <div class="carousel-caption">
                                            ...
                                        </div>
                                    </div>
                                </div>

                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-pic" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#carousel-pic" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>

                    </div>

                </div>


            </div>
            <div class="col-lg-2">

                <div>
                    <ul class="list-group">
                        <li class="list-group-item ">友情链接</li>
                        <li class="list-group-item"><a href="http://icec.nefu.edu.cn/">信息与计算机工程学院</a></li>
                        <li class="list-group-item"><a href="http://cas.nefu.edu.cn/cas/login">数字东林</a></li>
                        <li class="list-group-item"><a href="https://www.nefu.edu.cn/">东北林业大学</a></li>
                        <li class="list-group-item"><a href="http://www.edu.cn/">中国教育和科研计算机网</a></li>
                        <li class="list-group-item"><a href="http://www.hljkjt.gov.cn/">黑龙江省科技厅</a></li>
                    </ul>
                </div>
            </div>
        </div>

    </section>



    <!-- 教师队伍 -->
    <section id="team">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="section-title">
                        <h2>教师队伍 <small>来自各个领域精英</small></h2>
                    </div>
                </div>
                <div class="container">
                    <div class="col-lg-10 col-lg-offset-1">
                        <div>
                            <!-- Nav tabs -->
                            <ul id="myTabs" class="nav nav-tabs">
                                <li class="active"><a href="#professor" data-toggle="tab">教授</a></li>
                                <li><a href="#aprofessor" data-toggle="tab">副教授</a></li>
                                <li><a href="#lecturer" data-toggle="tab">讲师</a></li>
                                <li><a href="#eteacher" data-toggle="tab">外聘教师</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">

                                <div class="tab-pane active" id="professor">
                                    <div>
                                        <div class="col-md-3 col-sm-4">
                                            <div class="team-thumb">
                                                <div class="team-image">
                                                    <img src="images/t1.jpg" class="img-responsive" alt="">
                                                </div>
                                                <div class="team-info">
                                                    <h3>Mark Wilson</h3>
                                                    <span>I love Teaching</span>
                                                </div>
                                                <ul class="social-icon">
                                                    <li><a    class="fa fa-twitter"></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="col-md-3 col-sm-4">
                                            <div class="team-thumb">
                                                <div class="team-image">
                                                    <img src="images/t2.jpg" class="img-responsive" alt="">
                                                </div>
                                                <div class="team-info">
                                                    <h3>Catherine</h3>
                                                    <span>Education is the key!</span>
                                                </div>
                                                <ul class="social-icon">
                                                    <li><a    class="fa fa-google"></a></li>
                                                </ul>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <div class="tab-pane" id="aprofessor">
                                    <div>
                                        <div class="col-md-3 col-sm-4">
                                            <div class="team-thumb">
                                                <div class="team-image">
                                                    <img src="images/t3.jpg" class="img-responsive" alt="">
                                                </div>
                                                <div class="team-info">
                                                    <h3>Jessie Ca</h3>
                                                    <span>I like Online Courses</span>
                                                </div>
                                                <ul class="social-icon">
                                                    <li><a    class="fa fa-envelope-o"></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="col-md-3 col-sm-4">
                                            <div class="team-thumb">
                                                <div class="team-image">
                                                    <img src="images/t4.jpg" class="img-responsive" alt="">
                                                </div>
                                                <div class="team-info">
                                                    <h3>Andrew Berti</h3>
                                                    <span>Learning is fun</span>
                                                </div>
                                                <ul class="social-icon">
                                                    <li><a    class="fa fa-google"></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="tab-pane" id="lecturer">
                                    <div>
                                        <div class="col-md-3 col-sm-4">
                                            <div class="team-thumb">
                                                <div class="team-image">
                                                    <img src="images/t5.jpg" class="img-responsive" alt="">
                                                </div>
                                                <div class="team-info">
                                                    <h3>Mark Wilson</h3>
                                                    <span>I love Teaching</span>
                                                </div>
                                                <ul class="social-icon">
                                                    <li><a    class="fa fa-twitter"></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="col-md-3 col-sm-4">
                                            <div class="team-thumb">
                                                <div class="team-image">
                                                    <img src="images/t6.jpg" class="img-responsive" alt="">
                                                </div>
                                                <div class="team-info">
                                                    <h3>Catherine</h3>
                                                    <span>Education is the key!</span>
                                                </div>
                                                <ul class="social-icon">
                                                    <li><a    class="fa fa-google"></a></li>
                                                </ul>
                                            </div>
                                        </div>



                                    </div>
                                </div>

                                <div class="tab-pane" id="eteacher">
                                    <div>
                                        <div class="col-md-3 col-sm-4">
                                            <div class="team-thumb">
                                                <div class="team-image">
                                                    <img src="images/t4.jpg" class="img-responsive" alt="">
                                                </div>
                                                <div class="team-info">
                                                    <h3>Andrew Berti</h3>
                                                    <span>Learning is fun</span>
                                                </div>
                                                <ul class="social-icon">
                                                    <li><a    class="fa fa-twitter"></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>


    <!-- 实验室 -->
    <section id="courses">
        <div class="container">
            <div class="row">

                <div class="col-md-12 col-sm-12">
                    <div class="section-title">
                        <h2>先进的实验室 <small>为学生提供良好的学习环境和和动手实践的机会</small></h2>
                    </div>

                    <div class="owl-carousel owl-theme owl-courses">
                        <div class="col-md-4 col-sm-4">
                            <div class="item">
                                <div class="courses-thumb">
                                    <div class="courses-top">
                                        <div class="courses-image">
                                            <img src="images/class1.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="courses-date">
                                            <span><i class="fa fa-calendar"></i> 12 / 7 / 2018</span>
                                        </div>
                                    </div>

                                    <div class="courses-detail">
                                        <h3><a   >物联网实验室</a></h3>
                                        <p>物联网系统设计、智能传感器、智能家居、智能物流</p>
                                    </div>

                                    <div class="courses-info">
                                        <div class="courses-author">
                                            <img src="images/t1.jpg" class="img-responsive" alt="">
                                            <%-- <span>Mark Wilson</span> --%>
                                        </div>
                                        <div class="courses-price">
                                            <a   ><span>国家级实验室</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <div class="item">
                                <div class="courses-thumb">
                                    <div class="courses-top">
                                        <div class="courses-image">
                                            <img src="images/class2.jpeg" class="img-responsive" alt="">
                                        </div>
                                        <div class="courses-date">
                                            <span><i class="fa fa-calendar"></i> 20 / 7 / 2018</span>
                                        </div>
                                    </div>

                                    <div class="courses-detail">
                                        <h3><a   >IOS实验室</a></h3>
                                        <p>iOS平台产品研发、运营、安全性研究</p>
                                    </div>

                                    <div class="courses-info">
                                        <div class="courses-author">
                                            <img src="images/t2.jpg" class="img-responsive" alt="">
                                            <%-- <span>Jessica</span> --%>
                                        </div>
                                        <div class="courses-price">
                                            <a   ><span>国家级实验室</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <div class="item">
                                <div class="courses-thumb">
                                    <div class="courses-top">
                                        <div class="courses-image">
                                            <img src="images/class3.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="courses-date">
                                            <span><i class="fa fa-calendar"></i> 15 / 8 / 2018</span>
                                        </div>
                                    </div>

                                    <div class="courses-detail">
                                        <h3><a   >大数据实验室</a></h3>
                                        <p>研究方向涵盖大数据算法、大数据系统、大数据应用等</p>
                                    </div>

                                    <div class="courses-info">
                                        <div class="courses-author">
                                            <img src="images/t3.jpg" class="img-responsive" alt="">
                                            <%-- <span>Catherine</span> --%>
                                        </div>
                                        <div class="courses-price free">
                                            <a   ><span>省级实验室</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <div class="item">
                                <div class="courses-thumb">
                                    <div class="courses-top">
                                        <div class="courses-image">
                                            <img src="images/class4.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="courses-date">
                                            <span><i class="fa fa-calendar"></i> 10 / 8 / 2018</span>
                                        </div>
                                    </div>

                                    <div class="courses-detail">
                                        <h3><a   >网络实验室</a></h3>
                                        <p>研究方向有未来网络系统结构、网络安全等</p>
                                    </div>

                                    <div class="courses-info">
                                        <div class="courses-author">
                                            <img src="images/t1.jpg" class="img-responsive" alt="">
                                            <%-- <span>Mark Wilson</span> --%>
                                        </div>
                                        <div class="courses-price">
                                            <a   ><span>国家级实验室</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <div class="item">
                                <div class="courses-thumb">
                                    <div class="courses-top">
                                        <div class="courses-image">
                                            <img src="images/class5.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="courses-date">
                                            <span><i class="fa fa-calendar"></i> 5 / 10 / 2018</span>
                                        </div>
                                    </div>

                                    <div class="courses-detail">
                                        <h3><a   >嵌入式实验室</a></h3>
                                        <p>嵌入式技术、服务计算、信息传输与融合、智能信息应用技术等</p>
                                    </div>

                                    <div class="courses-info">
                                        <div class="courses-author">
                                            <img src="images/t2.jpg" class="img-responsive" alt="">
                                            <%-- <span>Jessica</span> --%>
                                        </div>
                                        <div class="courses-price free">
                                            <a   ><span>省级实验室</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </section>


    <!-- 学生就业 -->
    <section id="testimonial">
        <div class="container">
            <div class="row">

                <div class="col-md-12 col-sm-12">
                    <div class="section-title">
                        <h2>优秀毕业生 <small>Excellent graduate presentation</small></h2>
                    </div>

                    <div class="owl-carousel owl-theme owl-client">
                        <div class="col-md-4 col-sm-4">
                            <div class="item">
                                <div class="tst-image">
                                    <img src="images/tst-image1.jpg" class="img-responsive" alt="">
                                </div>
                                <div class="tst-author">
                                    <h4>胖虎虎</h4>
                                    <span>滴滴 &nbsp;前端工程师</span>
                                </div>
                                <p class="p_student">东北林业大学软件工程专业2016届毕业生。现工作于滴滴，担任前端工程师，主要从事前后端相关工作。</p>
                                <div class="tst-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <div class="item">
                                <div class="tst-image">
                                    <img src="images/tst-image2.jpg" class="img-responsive" alt="">
                                </div>
                                <div class="tst-author">
                                    <h4>大大雄</h4>
                                    <span>阿里 &nbsp;算法工程师</span>
                                </div>
                                <p class="p_student">东北林业大学软件工程专业2015届毕业生。现工作于阿里巴巴淘宝直通车技术部，担任算法工程师，主要从事直通车广告算法优化相关工作。</p>
                                <div class="tst-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <div class="item">
                                <div class="tst-image">
                                    <img src="images/tst-image3.jpg" class="img-responsive" alt="">
                                </div>
                                <div class="tst-author">
                                    <h4>大小夫</h4>
                                    <span>百度 &nbsp;WEB工程师</span>
                                </div>
                                <p class="p_student">东北林业大学软件工程专业2014届毕业生。现工作于百度，担任WEB工程师，主要从事相关工作。</p>
                                <div class="tst-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <div class="item">
                                <div class="tst-image">
                                    <img src="images/tst-image4.jpg" class="img-responsive" alt="">
                                </div>
                                <div class="tst-author">
                                    <h4>大静香</h4>
                                    <span>腾讯 &nbsp;腾讯</span>
                                </div>
                                <p class="p_student">东北林业大学软件工程专业2015届毕业生。现工作于腾讯游戏事业部，担任腾讯，主要从事相关游戏编程工作。</p>
                                <div class="tst-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </section>


    <!-- FOOTER -->
    <footer id="footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 col-sm-6">
                    <div class="footer-info">
                        <div class="section-title">
                            <h2>地址</h2>
                        </div>
                        <address>
                            <p>中国 黑龙江 哈尔滨,<br> 香坊区 和兴路26号 东北林业大学</p>
                        </address>

                        <ul class="social-icon">
                            <li><a    class="fa fa-facebook-square"></a></li>
                            <li><a    class="fa fa-twitter"></a></li>
                            <li><a    class="fa fa-instagram"></a></li>
                        </ul>

                        <div class="copyright-text">
                            <p>Copyright &copy; 2018 Zhanyeye</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="footer-info">
                        <div class="section-title">
                            <h2>联系方式</h2>
                        </div>
                        <address>
                            <p>QQ:2693166516</p>
                            <p><a href="mailto:zhanyeye@qq.com">zhanyeye@qq.com</a></p>
                        </address>

                        <div class="footer_menu">
                            <h2>相关连接</h2>
                            <ul>
                                <li><a href="http://icec.nefu.edu.cn/">信息与计算机工程学院</a></li>
                                <li><a href="http://cas.nefu.edu.cn/cas/login">数字东林</a></li>
                                <li><a href="https://www.nefu.edu.cn/">东北林业大学</a></li>
                                <li><a href="http://www.edu.cn/">中国教育和科研计算机网</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-12">
                    <div class="footer-info newsletter-form">
                        <div class="section-title">
                            <h2>联系我们</h2>
                        </div>
                        <div>
                            <div class="form-group">
                                <form  method="get">
                                    <input type="email" class="form-control" placeholder="输入您的电子邮件" name="email"
                                        id="email">
                                    <input type="button" class="form-control" name="submit" id="form-submit" value="发送">
                                </form>
                                <span><sup>*</sup> 　我们不会向您滥发电子邮件。</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </footer>


    <!-- SCRIPTS -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/custom.js"></script>

</body>

</html>