<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.demo.*"%>
<%@ page import="java.io.*"%>
<%@  page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
<link rel="stylesheet" href="css/style.css" media="screen"
	type="text/css" />
</head>
<body>

	<div class="container">
		<form id="contact" action="register.do" method="post">
			<h3>注册管理员账号</h3>
			<h4>register.</h4>
			<fieldset>
				<input placeholder="请输入用户名" type="text"   name="username">
			</fieldset>
			<fieldset>
				<input placeholder="输入密码" type="password" 
					name="password">
			</fieldset>
			<fieldset>
				<input placeholder="再次输入密码" type="password" 
					name="c">
			</fieldset>

			
			<fieldset>
				<button name="submit" type="submit" id="contact-submit"
					data-submit="...Sending">提交完成</button>
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


