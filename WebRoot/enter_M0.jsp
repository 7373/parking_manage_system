<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.demo.*"%>
<%@ page import="java.io.*"%>
<%@  page import="java.util.ArrayList"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<% 
java.text.SimpleDateFormat formatter1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//java.util.Date currentTime = new java.util.Date();//得到当前系统时间
String str_date12 = formatter1.format(new Date()); //将日期时间格式化 
//String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式 
%>
<head>

<meta charset="UTF-8">

<title>录入</title>

<link rel="stylesheet" href="css/style.css" media="screen"
	type="text/css" />

</head>

<body>

	<div class="container">
		<form id="contact" action="enter.do" method="post">
			<h3>停车信息录入</h3>
			<h4>Parking information.</h4>
			<fieldset>
				选择汽车类型：
			<select name="type"> 
			<option value="小型汽车">小型汽车</option>
      		<option value="中型客车">中型客车</option> 
      <option value="大型货车">大型货车</option> 
      <option value="城市公交车">城市公交车</option> 
      <option value="其他类型车辆">其他类型车辆</option> 
      </select>
			</fieldset>
			<fieldset>
				<input placeholder="汽车车牌号" type="text" 
					name="b">
			</fieldset>
			<fieldset>
				<tr><p>parking time</p><input value="<%=str_date12 %>" type="text" name="c"></tr>
			</fieldset>

			<fieldset>
				<textarea placeholder="备注更多的信息..." type="text"  name="d"></textarea>
			</fieldset>
			<fieldset>
				<button name="submit" type="submit" id="contact-submit"
					data-submit="...Sending">提交到系统</button>
			</fieldset>
		</form>

	</div>
	<div style="text-align:center;clear:both">
		<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
		<script src="/follow.js" type="text/javascript"></script>
	</div>
	<%
		
	%>
</body>
</html>


