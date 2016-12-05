<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<style type="text/css">
body{
margin:0 auto;
padding:0;
}
div{
 margin-left:30%;
 font-size:17px;
}
table{
    	border-collapse: collapse;
    	width:500px;
    	height:400px;
}
table thead td{
       border:0;
       font-size:23px;
       height:50px;
       position: relative;
}
table thead td span{
display:block;
width:130px;
position: absolute;
left:90%;
top:4px;
}
table tbody input{
      width:200px;
      height:40px;
      font-size:20px;
}
table tbody select{
      width:200px;
      height:40px;
      font-size:20px;
}
table tbody tr td:first-child{
         text-align: right;
          font-size:20px;
           width:200px;
}
table tbody tr:last-child td{
         border:0px;
}
</style>
<script type="text/javascript">
    function  validate(){
    	var var1=document.getElementById("param1");
    	var var2=document.getElementById("param2");
    	var var3=document.getElementById("param3");
    	if((var1.value.length!=0)&&(var2.value.length!=0)&&(var3.value.length!=0)){
    		if(!isNaN(var1.value)&&!isNaN(var2.value)&&!isNaN(var3.value)){
    			return true;
    		}else{
    			alert("参数不是数字，请再输入参数");
        		return false;
    		}
    	}else{
    		alert("参数不能为空，请输入参数");
    		return false;
    	}
    }
</script>
</head>
<body>
	<div>
		<form action="../doCaculate" method="post" onsubmit="return validate()">
			<table border="1" style="background-image:url(../img/background2.jpg)">
				<thead>
					<tr>
						<td><span>简单计算器</span></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>第一个参数</td>
						<td><input name="param1" type="text" id="param1"></td>
					</tr>
					<tr>
						<td>第一个操作符</td>
						<td><select name="operator1">
								<option value="1">+</option>
								<option value="2">-</option>
								<option value="3">*</option>
								<option value="4">/</option>
								<option value="5">%</option>
						</select></td>
					</tr>
					<tr>
						<td>第二个参数</td>
						<td><input name="param2" type="text" id="param2"></td>
					</tr>
					<tr>
						<td>第二个操作符</td>
						<td><select name="operator2">
								<option value="1">+</option>
								<option value="2">-</option>
								<option value="3">*</option>
								<option value="4">/</option>
								<option value="5">%</option>
						</select></td>
					</tr>
					<tr>
						<td>第三个参数</td>
						<td><input name="param3" type="text" id="param3"></td>
					</tr>
					<tr>
						<td><input value="提交" type="submit" style="width:60px;"></td>
						<td><input type="reset" value="重置" style="width:60px;margin-left:30px;"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>