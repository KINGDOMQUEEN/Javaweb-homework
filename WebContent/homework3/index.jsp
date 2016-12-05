<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	margin: 0 auto;
	padding: 0;
}

.container {
	margin-top: 40px;
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
	width: 130px;
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
}

table tbody tr:last-child td {
	border: 0px;
}

td div {
	width: 290px;
	height: 40px;
	margin-left: 0;
	margin-top: 5px;
	font-size: 14px;
}

td div input {
	width: 40px;
	height: 40px;
}

td div label {
	margin-top: 10px;
}
</style>
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" href="../jquery/jquery-ui.css">
<script src="../jquery/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(
		function() {
			$('.birth')
					.datepicker(
							{
								numberOfMonths : 1,//显示几个月
								dateFormat : "yy-mm-dd",
								showButtonPanel : true,//是否显示按钮面板
								dateFormat : 'yy-mm-dd',//日期格式
								clearText : "清除",//清除日期的按钮名称
								closeText : "关闭",//关闭选择框的按钮名称
								prevText : "上月",
								nextText : "下月",
								autoSize : "true",
								changeMonth : "true",
								changeYear : "true",
								yearSuffix : '年', //年的后缀
								monthSuffix : "月",
								showMonthAfterYear : true,//是否把月放在年的后面
								defaultDate : new Date(),//默认日期
								monthNames : [ '一月', '二月', '三月', '四月',
										'五月', '六月', '七月', '八月', '九月', '十月',
										'十一月', '十二月' ],
								dayNames : [ '星期日', '星期一', '星期二', '星期三',
										'星期四', '星期五', '星期六' ],
								dayNamesShort : [ '周日', '周一', '周二', '周三',
										'周四', '周五', '周六' ],
								dayNamesMin : [ '日', '一', '二', '三', '四',
										'五', '六' ],
								monthNamesShort : [ '一月', '二月', '三月', '四月',
										'五月', '六月', '七月', '八月', '九月', '十月',
										'十一月', '十二月' ],
								onSelect : function(selectedDate) {//选择日期后执行的操作
									alert(selectedDate);
								}
							});
							});
</script>
<script type="text/javascript">
    function  validate(){
    	var var1=document.getElementById("param1");
    	var var2=document.getElementById("param2");
    	var var3=document.getElementById("param3");
    	var var4=document.getElementById("param4");
    	var var5=document.getElementById("param5");
    	 var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
    	if((var1.value.length!=0)&&(var2.value.length!=0)&&(var3.value.length!=0)&&(var4.value.length!=0)&&(var5.value.length!=0)){
    			if(var2.value!=var3.value){
    				alert("两次输入密码不一致，请重新输入");
    				return false;
    			 }else{
    				 if(!reg.test(var4.value)){
  	    				alert("邮箱格式不正确");
  	    				return false;
  	    			}
 	    			}
    		   return true;
    	}else{
    		alert("请确认表单信息填写完整");
    		return false;
    	}
    }
</script>
</head>
<body>
	<div class="container">
		<form action="../DoIndex" method="post" onsubmit="return validate()">
			<table border="1" style="background-image:url(../img/background3.jpg)" >
				<tbody align="center">
					<tr>
						<td align="center">用户名</td>
						<td><input name="username" type="text" id="param1"></td>
					</tr>
					<tr>
						<td align="center">密码</td>
						<td><input name="password" type="password" id="param2"></td>
					</tr>
					<tr>
						<td align="center">确认密码</td>
						<td><input type="password" id="param3"></td>
					</tr>
					<tr>
						<td align="center">邮箱</td>
						<td><input name="email" type="text" id="param4"></td>
					</tr>
					<tr>
						<td align="center">生日</td>
						<td><input type="text" name="birth" class="birth" id="param5"
							readonly="readonly"></td>
					</tr>
					<tr>
						<td align="center">爱好</td>
						<td>
							<div>
								篮球：<input type="checkbox" name="hobi1" value="篮球"> 足球：<input
									type="checkbox" name="hobi2" value="足球"> 其他：<input
									type="checkbox" name="hobi3" value="其他">
							</div>
						</td>
					</tr>
					<tr align="center">
						<td><input value="清空" type="reset" style="width: 60px;"></td>
						<td><input type="submit" value="注册"
							style="width: 60px; margin-left: 30px;"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>