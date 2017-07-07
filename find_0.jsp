<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.demo.*"%>
<%@ page import="java.io.*"%>
<%@  page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>查询</title>

<link rel="stylesheet" href="css/style.css" media="screen"
	type="text/css" />

</head>

<body>

	<div class="container">
		<form id="contact" action="find.do" method="post">
			<h3>停车记录查询</h3>
			<h4>Parking record search.</h4>
			<fieldset>
				<input placeholder="可输入车辆类型" type="text"   name="type">
			</fieldset>
			<fieldset>
				<input placeholder="可输入车牌号" type="text" 
					name="b">
			</fieldset>
			<fieldset>
				<input placeholder="开始的停车时间" type="text" 
					name="c">
			</fieldset>
			<fieldset>
				<input placeholder="结束时间" type="text" 
					name="d">
			</fieldset>
			
			<fieldset>
				<textarea placeholder="更多可能的信息...." type="text"  name="e"></textarea>
			</fieldset>
			<fieldset>
				<button name="submit" type="submit" id="contact-submit"
					data-submit="...Sending">搜索一下</button>
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


