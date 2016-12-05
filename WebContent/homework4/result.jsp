<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="work4.ChangInfo"%>
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
	background-image:url(../img/background4.jpg);
}
</style>
</head>
<body>
	<jsp:useBean id="changInfo" class="work4.ChangInfo"
		scope="session" />
	<div align="center">
	</br>
	</br>
		<h1>转换信息</h1>
		原数：<jsp:getProperty property="num" name="changInfo"/><br>
		从：<jsp:getProperty property="origin" name="changInfo" />进制<br>
		转换为：<jsp:getProperty
			property="target" name="changInfo" /> 进制<br> 
			
		   结果为：<jsp:getProperty
			property="result" name="changInfo" /><br>
	</div>
</body>
</html>