<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="work3.UserInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>resullt</title>
<style>
body {
	margin: 0 auto;
}

div {
	width: 400px;
	height: 500px;
	margin: 100px auto;
	background-image:url(../img/background3.jpg);
}
</style>
</head>
<body>
	<jsp:useBean id="userInfo" class="work3.UserInfo"
		scope="session" />
	<div align="center">
	</br>
		<h1>用户信息</h1>
		用户名：<jsp:getProperty property="username" name="userInfo" /><br>
		 密码：<jsp:getProperty
			property="password" name="userInfo" /><br> 
			
		     邮箱：<jsp:getProperty
			property="email" name="userInfo" /><br>
			生日：<jsp:getProperty
			property="birth" name="userInfo" /><br>
			爱好：<jsp:getProperty
			property="hobi1" name="userInfo" /><jsp:getProperty
			property="hobi2" name="userInfo" /><jsp:getProperty
			property="hobi3" name="userInfo" /><br>
	</div>
</body>
</html>