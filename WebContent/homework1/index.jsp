<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<style>
table {
	border-collapse: collapse;
}

th {
	border: 0;
}

td {
	height: 40px;
	width: 200px;
}

input {
	margin-left: 4px;
	height: 23px;
	width: 180px;
}
</style>
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" href="../jquery/jquery-ui.css">
<script src="../jquery/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('.selectDate')
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
				var boo=false;
				$(".caculateMethod").change(function() {
					if (boo) {
						$(".times").attr("disabled", "disabled");
						$(".selectDate").removeAttr("disabled");
						boo = false;
					} else {
						$(".selectDate").attr("disabled", "disabled");
						$(".times").removeAttr("disabled");
						boo = true;
					}
				});
				
			});
</script>
<script type="text/javascript">
function  validate(){
	var var1=document.getElementById("param1");
	if(var1.value.length!=0){
		if(!isNaN(var1.value)){
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
	<div style="margin-left: 30%; margin-top: 100px">

		<form action="../Caculate" method="post" onsubmit="return validate()">
			<table border="1" cellpadding="0" style="background-image:url(../img/background1.jpg)">
				<thead style="height: 50px; font-size: 26px; text-align: center">
					<tr>
						<td style="border: 0;">个人存款计算器</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="font-size: 16px;">存款类型（活期,整存整取）</td>
						<td><select style="margin-left: 5px;" name="type"
							class="caculateMethod">
								<option value="1">活期</option>
								<option value="2">整存整取</option>
						</select></td>
					</tr>
					<tr>
						<td style="text-align: right; font-size: 20px;">存款金额</td>
						<td><input type="text" name="moneyNum" id="param1"></td>
					</tr>
					<tr>
						<td style="text-align: right; font-size: 20px;">存款期限</td>
						<td><select name="time" disabled="disabled" class="times">
								<option value="1">三个月</option>
								<option value="2">六个月</option>
								<option value="3">一年</option>
								<option value="4">两年</option>
								<option value="5">三年</option>
								<option value="6">五年</option>
						</select></td>
					</tr>
					<tr>
						<td style="text-align: right; font-size: 20px;">存入日期</td>
						<td><input type="text" name="dateIn" class="selectDate"
							readonly="readonly"></td>
					</tr>
					<tr>
						<td style="text-align: right; font-size: 20px;">提取日期</td>
						<td><input type="text" name="dateOut" class="selectDate"
							readonly="readonly"></td>
					</tr>
				</tbody>
				<tr>
					<td style="border-right: 0"><input type="submit" value="提交"
						style="width: 50px; margin-left: 140px; height: 30px; font-size: 18px;"></td>
					<td style="border-left: 0"><input type="reset" value="重置"
						style="width: 50px; margin-left: 20px; height: 30px; font-size: 18px;"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>