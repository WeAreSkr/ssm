<%@ page language="java" import="java.util.*" import="cap.model.*" pageEncoding="utf-8"%>
<%@ page import="cap.model.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
User u = (User)request.getSession().getAttribute("user");
%>

<jsp:include page="/frame/Header.jsp"></jsp:include>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="index">JavaEE 博客</a>
			</div>
			
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="index">网站首页</a>
					</li>
				</ul>


				<ul class="nav navbar-nav">
					<li><a
						href="user/myblog?userId=">我的博客</a>
					</li>
				</ul>

				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">博客管理<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a
								href="article/manage?userId="><i
									class="glyphicon glyphicon-cog"></i> 博文管理</a>
							</li>
							<li class="divider"></li>
							<li><a
								href="category/manage?userId="><i
									class="glyphicon glyphicon-cog"></i> 分类管理</a>
							</li>
							<li class="divider"></li>
							<li><a
								href="comment/manage?userId="><i
									class="glyphicon glyphicon-cog"></i> 评论管理</a>
							</li>
						</ul></li>
				</ul>

				}
				<c:if test="${user==null}">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/user/login" >登录</a>
					</li>
					<li><a href="/user/register" target="_blank">注册</a>
					</li>
				</ul>
				</c:if>
				<c:if test="${user!=null}">
				<div class="pull-right">
					<ul class="nav pull-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">欢迎，${user.username}</a>

							<ul class="dropdown-menu">
								<li><a
									href="/user/profile?userId="><i
										class="glyphicon glyphicon-cog"></i> 编辑个人信息</a>
								</li>

								<li class="divider"></li>
								<li><a
									href="/user/bloginfo?userId="><i
										class="glyphicon glyphicon-cog"></i> 编辑博客信息</a>
								</li>

								<li class="divider"></li>
								<li><a href="/user/logout"><i
										class="glyphicon glyphicon-off"></i> 登出</a>
								</li>
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
			<div id="blog" class="col-lg-8">
				<h1>
					<a href="index.jsp">轻博客——<small>基于Struts2+Spring+Hibernate技术构建</small>
					</a>
				</h1>
				<br>


 <c:forEach items="${pageBean.list}" varStatus="index" var="article">
				<h3>
					<a
						href="comment/post?artId=&userId="
						target="_blank"> ${article.title}</a>
				</h3>
				<p>
					<i class="glyphicon glyphicon-user"></i> <a
						href="user/myblog?userId="
						target="_blank">
					${article.summary}
				</a>
					| <i class="glyphicon glyphicon-calendar"></i>

					| 阅读 ${article.count}次
				</p>
 </c:forEach>
				<p></p>
				<br> <a class="btn btn-primary"
					href="comment/post?artId=">Read
					More <span class="glyphicon glyphicon-chevron-right"></span>
				</a>
				<hr>



				<!-- pager -->
				<ul class="pager">

					<li class="previous"><a
						href="index?pageno=${pageBean.previousPageNo}&pagesize=5">&larr;
							上一页</a>
					</li>

					<li class="next"><a
						href="index?pageno=${pageBean.nextPageNo}&pagesize=5">下一页
							&rarr;</a>
					</li>
				

				</ul>

			</div>

			<div class="col-lg-4">

				<div class="well" align="center">
					<a class="btn btn-primary" href="ApplyBlog.jsp"
						target="_blank">申请个人博客</a>
				</div>


				<div class="well" align="center">
					<a class="btn btn-primary"
						href="user/myblog?userId=">进入我的博客</a>
				</div>


				<div class="well">
					<h4>搜索站内文章</h4>
					<form name="search_form" action="user/search"
						method="post">
						<div class="input-group">
							<input type="text" class="form-control" name="searchStr"> <span
								class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<span class="glyphicon glyphicon-search"></span>
								</button> </span>
						</div>
						
					</form>
				</div>			

				<form action="servlet/GetSysCategoryServlet" method="GET">
					<div class="well">
						<h4>网站分类</h4>
						<div class="row">
							<div class="col-lg-6">
								<ul class="list-unstyled">

								</ul>
							</div>
						</div>
					</div>					
				</form>

				<div class="well">
					<h4>本周活跃博主</h4>
					<div class="row">
						<div class="col-lg-6">
						
							<ul class="list-unstyled">

							</ul>
							
						</div>
					</div>
				</div>
				<!-- /well -->

				<div class="well">
					<h4>博文TOP10</h4>
					<div class="row">
						<div class="col-lg-6">
						
							<ul class="list-unstyled">

                   
                 
						</ul>
						 
						</div>
					</div>
				</div>
				<!-- /well -->
			</div>
		</div>
	</div>
	<!-- /.container -->

	<jsp:include page="/frame/Footer.jsp"/>