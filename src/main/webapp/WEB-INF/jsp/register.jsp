<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../../frame/Header.jsp"/>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="index">JavaEE 博客</a>
			</div>			
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<a class="navbar-brand" href="index">SSH2博客</a>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.jsp" target="_blank">登录</a></li>
					<li><a href="register.jsp" target="_blank">注册</a></li>
				</ul>
			</div>			
		</div>		
	</nav>

<c:if test="${succMsg!=null}">
	<div class="container">
		<div class="alert alert-success">
			${succMsg}}，点击<a href="login.jsp">这里</a>进行登录。
		</div>
	</div>
	</c:if>



	<div class="container ">
		<div class="row col-md-6">
			<form class="form-horizontal" name="register_form"
				action="/user/register" method="POST"
				onsubmit="return isValidate(register_form)">
				<fieldset>
					<div id="legend form-group">
						<legend class="caption">注册</legend>
					</div>
					<div class="form-group">
						<!-- Username -->
						<label for="username">用户名</label>
						<input type="text" id="username" name="username" placeholder="请输入用户名" class="form-control">
					</div>
					<div class="form-group">
						<!-- E-mail -->
						<label  for="email">E-mail</label>
						<input type="text" id="email" name="email" placeholder="请输入邮箱地址" class="form-control">
					</div>
					<div class="form-group">
						<!-- Password-->
						<label class="control-label" for="password">密码</label>						
						<input type="password" id="password" name="password" placeholder="请输入密码" class="form-control">
					</div>
					<div class="form-group">
						<!-- Password -->
						<label class="control-label" for="password_confirm">密码（确认）</label>
						<input type="password" id="password_confirm" name="u.password_confirm" placeholder="请再次输入密码" class="form-control">
					</div>
					
					<div class="form-group">
						<!-- Button -->
					    <button class="btn btn-success">注册</button>	
					</div>
				</fieldset>
			</form>
		</div>
	</div>

	<jsp:include page="../../frame/Footer.jsp"></jsp:include>

	<script type="text/javascript">
function isValidate(form) {
	var username = form.username.value;
	var email = form.email.value;
	var password = form.password.value;
	var password_confirm = form.password_confirm.value;
	
	if (username == "" || email == "" || password == "" || password_confirm == "") {
		alert("用户名、邮箱、密码、确认密码为必填项！");		
		return false;
		
	} else if (password != password_confirm){
		alert("密码和密码（确认）必须相同！");
		return false;
		
	} else {
		return true;
	}
	
}
window.onload = function () {
    <c:if test="${errMsg != null}">

    alert("${errMsg}");

    </c:if>
}

</script>