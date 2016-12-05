<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="work1.Info"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>result</title>
<style>
body {
	margin: 0 auto;
}

div {
	width: 400px;
	height: 500px;
	margin: 100px auto;
	background-image:url(../img/background1.jpg);
	
}
</style>
</head>
<body>
	<jsp:useBean id="info" class="work1.Info"
		scope="application" />
	<div align="center">
	</br>
	</br>
		<h1>计算结果输出</h1>
		本金：<jsp:getProperty property="moneyNum" name="info" /><br> 利息：<jsp:getProperty
			property="lixi" name="info" /><br> 本息和：<jsp:getProperty
			property="total" name="info" /><br>
	</div>
</body>
</html>