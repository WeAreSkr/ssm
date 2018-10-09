<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/frame/Header.jsp"></jsp:include>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index">SSH2 博客</a>
        </div>

        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/index">网站首页</a></li>
            </ul>


            <ul class="nav navbar-nav">
                <li><a href="/myblog?userId=${user.id}">我的博客</a></li>
            </ul>

            <ul class="nav navbar-nav">
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">博客管理<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="/article/manage?userId=${user.id}"><i class="glyphicon glyphicon-cog"></i> 博文管理</a></li>
                        <li class="divider"></li>
                        <li><a href="/category/manage?userId=${user.id}"><i class="glyphicon glyphicon-cog"></i> 分类管理</a></li>
                        <li class="divider"></li>
                        <li><a href="/comment/manage?userId=${user.id}"><i class="glyphicon glyphicon-cog"></i> 评论管理</a></li>
                    </ul>
                </li>
            </ul>


         <c:if test="${user == null}">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="Login.jsp" target="_blank">登录</a></li>
                <li><a href="Register.jsp" target="_blank">注册</a></li>
            </ul>
         </c:if>
            <c:if test="${user !=null}">
            <div class="pull-right">
                <ul class="nav pull-right">
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">欢迎，${user.username} <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href=/user/profile?userId=${user.id}"><i class="glyphicon glyphicon-cog"></i> 编辑个人信息</a></li>

                            <li class="divider"></li>
                            <li><a href="/user/bloginfo?userId=${user.id}"><i class="glyphicon glyphicon-cog"></i> 编辑博客信息</a></li>

                            <li class="divider"></li>
                            <li><a href="/user/logout"><i class="glyphicon glyphicon-off
glyphicon "></i> 登出</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            </c:if>

        </div>
    </div>
</nav>

<div class="container">

    <div class="row">
        <div class="col-lg-8">

            <!-- blog entry -->
            <h1><a href="/user/myblog?userId=${user.id}">
                ${bi.blogName}
            </a></h1>
            <p class="lead">
                ${bi.annoucement}
            </p><br>


            <c:forEach items="${pc.list}" var="article" >
                <h3>
                    <a href="/comment/post?artId=${article.id}&userId=${article.userId}"></a>
                </h3>
                <p>
                    <i class="glyphicon glyphicon-user"></i> <a href="#"> ${user.username}</a>
                    | <i class="glyphicon glyphicon-calendar"></i> ${article.publishTime}
                    | 阅读${article.count} 次
                </p>
                <hr>
                <p>${article.summary}</p>
                <a class="btn btn-primary" href="/comment/post?artId= &userId= ">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
                <hr>
            </c:forEach>

            <!-- pager -->
            <ul class="pager">
                <c:if test="${pc.pageNo > 1}">


                    <li class="previous"><a
                            href="/myblog?userId=${user.id}&curPage=${pc.pageNo-1}">&larr;
                        上一页</a>
                    </li>

                </c:if>
                <c:if test="${pc.pageNo< pc.totalPages}">
                    <li class="next"><a
                            href="/myblog?userId=${user.id}&curPage=${pc.pageNo+1}">下一页
                        </a>
                    </li>

                </c:if>
            </ul>

        </div>

        <div class="col-lg-4">
            <form action="#" method="GET">
                <div class="well">
                    <h4> 文章分类</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">


                            </ul>
                        </div>
                    </div>
                </div>
            </form>

            <div class="well">
                <h4>公告</h4>
                <p> </p>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/frame/Footer.jsp"></jsp:include>