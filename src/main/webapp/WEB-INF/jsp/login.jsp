<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/frame/Header.jsp"/>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
     <div class="container">
       <div class="navbar-header">
         <a class="navbar-brand" href="index">SSH2博客</a>
       </div>

       <div class="collapse navbar-collapse navbar-ex1-collapse">
         <ul class="nav navbar-nav">
           <li><a href="index">网站首页</a></li>
         </ul>
       
         <ul class="nav navbar-nav navbar-right">
         	<li><a href="login.jsp" target="_blank">登录</a></li>
         	<li><a href="Register.jsp" target="_blank">注册</a></li>
         </ul>        
       </div>
     </div>
   </nav>

<c:if test="${errMsg !=null}">
    <div class="container">
    <div class="alert alert-error">
		${errMsg}
    </div>
    </div>
	</c:if>


	<div class="container">
		<div class="row col-md-6">
			<form name="login_form" role="form" action="login" method="POST" onsubmit="return isValidate(login_form)">
				<fieldset>
					<div id="legend">
						<legend class="caption">登录</legend>
					</div>
					<div class="form-group">
						<label for="username">用户名</label> 
						<input type="text"
							class="form-control " name="username" id="username"
							placeholder="Enter email">
					</div>
					<div class="form-group">
						<label for="password">密码</label> <input type="password"
							class="form-control" name="password" id="password"
							placeholder="Password">
					</div>
					
					<div class="form-group">
					<button type="submit" class="btn btn-success">登录</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>

	<jsp:include page="/frame/Footer.jsp"></jsp:include>

<script type="text/javascript">
function isValidate(login_form) {
	var username = login_form.username.value;
	var password = login_form.password.value;
	
	if (username == "" || password == "") {
		alert("请填写用户名和密码！");	
		
		return false;
	}
	return true;
}
</script>
