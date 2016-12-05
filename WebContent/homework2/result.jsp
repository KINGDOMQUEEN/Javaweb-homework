<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="work2.caculate"%>
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
	background-image:url(../img/background2.jpg);
}
</style>
</head>
<body>
	<jsp:useBean id="info" class="work2.CaculateInfo"
		scope="application" />
	<div align="center">
	</br>
	</br>
		<h1 >计算结果输出</h1>
	<jsp:getProperty property="param1" name="info" />
	<jsp:getProperty property="operator1" name="info" />
		<jsp:getProperty property="param2" name="info" />
		<jsp:getProperty property="operatoe2" name="info" />
		<jsp:getProperty property="param3" name="info" />=
		<jsp:getProperty property="result" name="info" />
	</div>
</body>
</html>