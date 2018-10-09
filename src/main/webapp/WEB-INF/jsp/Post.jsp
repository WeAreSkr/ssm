<%@ page language="java" import="java.util.*" import="cap.bean.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>	
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
int userId = 0;
User u = (User)request.getSession().getAttribute("user");		//用户登录后的信息
String succMsg = (String)request.getSession().getAttribute("succMsg");
String errorMsg = (String)request.getSession().getAttribute("errorMsg");

%>


<jsp:include page="frame/Header.jsp"></jsp:include>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<%=basePath %>index">SSH2博客</a>
			</div>			
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="<%=basePath %>index">网站首页</a></li>
				</ul>

				<%
					if ((null != u) && (u.getIsApplied() == true)) {
				%>
				<ul class="nav navbar-nav">
					<li><a
						href="<%=basePath%>user/myblog?userId=<%=u.getId()%>">我的博客</a></li>
				</ul>

				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">博客管理<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a
								href="<%=basePath%>article/manage?userId=<%=u.getId()%>"><i
									class="icon-cog"></i> 博文管理</a></li>
							<li class="divider"></li>
							<li><a
								href="<%=basePath%>category/manage?userId=<%=u.getId()%>"><i
									class="icon-cog"></i> 分类管理</a></li>
							<li class="divider"></li>
							<li><a
								href="<%=basePath%>comment/manage?userId=<%=u.getId()%>"><i
									class="icon-cog"></i> 评论管理</a></li>
						</ul></li>
				</ul>
				<%
					}
				%>

				<%
					if (null == u) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Login.jsp" target="_blank">登录</a></li>
					<li><a href="Register.jsp" target="_blank">注册</a></li>
				</ul>
				<%
					} else {
				%>
				<div class="pull-right">
					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">欢迎，<%=u.getUsername()%> <b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="<%=basePath%>user/profile?id=<%=u.getId()%>"><i
										class="icon-cog"></i> 编辑个人信息</a></li>
								<%
									if (u.getIsApplied() == true) {
								%>
								<li class="divider"></li>
								<li><a
									href="<%=basePath%>user/bloginfo?userId=<%=u.getId()%>"><i
										class="icon-cog"></i> 编辑博客信息</a></li>
								<%
									}
								%>
								<li class="divider"></li>
								<li><a href="<%=basePath%>logout"><i
										class="icon-off"></i> 登出</a></li>
							</ul></li>
					</ul>
				</div>
				<%
					}
				%>

			</div>
		
		</div>
		
	</nav>

	<div class="container">

		<div class="row">
			<div class="col-lg-8">

				
				<h2><s:property value="art.title"/></h2>
				<p>
					<i class="icon-user"></i> <a href="#"> <s:property value="art.user.username"/></a> | <i
						class="icon-calendar"></i>
					<s:property value="art.publishTime"/>
					| 阅读
					<s:property value="art.count"/>
					次
				</p>
				<hr>
				<p><s:property value="art.content"/></p>
				
				<hr>
			

				<div class="well">
					<%
						if (null != succMsg) {
					%>
					<div class="alert alert-success"><%=succMsg%></div>
					<%
						request.getSession().removeAttribute("succMsg");
					          	   }
					%>

					<%
						if (null != errorMsg) {
					%>
					<div class="alert alert-error"><%=errorMsg%></div>
					<%
						request.getSession().removeAttribute("errorMsg"); 
					          	   }
					%>
					<h4>评论：</h4>

					<%
						if (null != u) {
					               	userId = u.getId();
					               }
					%>
					<form role="form" name="comment" action="<%=basePath %>comment/commit?userId=<%=userId%>&artId=<s:property value="art.id"/>"
						method="post" onsubmit="return isValidate(comment)">
						<div class="form-group">
							<textarea class="form-control" rows="3" name="cmt.content"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">提交</button>
					</form>
				</div>
				
               <!-- 相关文章列表 -->
				<hr>				
				<s:iterator value="pc.list" id="cmt">
				<p>
					<i class="icon-user"></i><a
						href="<%=basePath %>user/myblog?userId=<s:property value="#cmt.user.id"/> target="_blank">
						<s:property value="#cmt.user.username"/></a> | <i class="icon-calendar"></i>
					<s:property value="#cmt.time"/>
				</p>
				<p><s:property value="#cmt.content"/></p>

				<hr>
				</s:iterator>
				<div>
					<!-- pager -->
					<ul class="pager">
						<s:if test="%{pc.curPage > 1}">
							<li class="previous"><a
								href="<%=basePath%>comment/post?artId=<%=u.getId()%>&curPage=<s:property value="%{pc.curPage-1}"/>">&larr;
									上一页</a>
							</li>
						</s:if>

						<s:if test="%{pc.curPage< pc.totalPages}">
							<li class="next"><a
								href="<%=basePath%>comment/post?artId=<%=u.getId()%>&curPage=<s:property value="%{pc.curPage+1}"/>">下一页
									&rarr;</a>
							</li>
						</s:if>
					</ul>
				</div>
			</div>
            
			<div class="col-lg-4">
				<div class="well">
					<h4>所属系统分类</h4>
					<div class="row">
						<div class="col-lg-6">
							<ul class="list-unstyled">
								<s:property value="scCategory.categoryName"/>
							</ul>
						</div>
					</div>
				</div>
				<!-- /well -->

				<div class="well">
					<h4>所属个人分类</h4>
					<div class="row">
						<div class="col-lg-6">
							<ul class="list-unstyled">
								<s:property value="category.categoryName"/>
							</ul>
						</div>
					</div>
				</div>
				<!-- /well -->
			</div>
		</div>

		<jsp:include page="frame/Footer.jsp"></jsp:include>

		<script type="text/javascript">
			function isValidate(comment) {
				var comment_content = comment.comment_content.value;

				if (comment_content == "") {
					alert("请填写评论内容");

					return false;
				}

				return true;
			}
		</script>