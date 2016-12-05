<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<style type="text/css">
body {
	margin: 0 auto;
	padding: 0;
}

div {
	margin-left: 30%;
	font-size: 17px;
}

table {
	border-collapse: collapse;
	width: 500px;
	height: 400px;
}

table thead td {
	border: 0;
	font-size: 23px;
	height: 50px;
	position: relative;
}

table thead td span {
	display: block;
	width: 170px;
	position: absolute;
	left: 90%;
	top: 4px;
}

table tbody input {
	width: 200px;
	height: 40px;
	font-size: 20px;
}

table tbody select {
	width: 200px;
	height: 40px;
	font-size: 20px;
}

table tbody tr td:first-child {
	text-align: right;
	font-size: 20px;
	width: 200px;
}

table tbody tr:last-child td {
	border: 0px;
}
</style>
<script type="text/javascript">
function validate(){
	var var1=document.getElementById("num");
	if(var1.value==""){
		alert("不能不输入数字，请输入计算数字！");
		return false;
	}else{
		if(isNaN(var1.value)){
			alert("您输入的不是数字，请重新输入！");
			return false;
		}else{
			return true;
		}
	}
}
</script>
</head>
<body>
	<div>
		<form action="../DoExchange" method="post" onsubmit=" return validate()">
			<table border="1" style="background-image:url(../img/background4.jpg)">
				<thead>
					<tr>
						<td><span>万能进制转换器</span></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>从：</td>
						<td><select name="origin">
								<option value="1">十进制</option>
								<option value="2">二进制</option>
								<option value="3">八进制</option>
								<option value="4">十六进制</option>
						</select></td>
					</tr>
					<tr>
						<td>转换为：</td>
						<td><select name="target">
								<option value="1">十进制</option>
								<option value="2">二进制</option>
								<option value="3">八进制</option>
								<option value="4">十六进制</option>
						</select></td>
					</tr>
					<tr>
						<td>原进制数为：</td>
						<td><input type="text" name="num" id="num"></td>
					</tr>
					<tr>
						<td><input value="开始转换" type="submit" style="width: 110px;"></td>
						<td><input type="reset" value="取消"
							style="width: 60px; margin-left: 60px;"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>