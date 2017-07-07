<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.demo.*"%>
<%@   page import="java.util.Date"%>

<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>用户展示</title>
<style type="text/css">
fieldset {
	width: 500px;
	border: 2px solid #006600;
}

legend {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	font-weight: bold;
}

ul {
	margin: 10px;
	padding: 0px;
	background-color: #FFFFCC;
}

li {
	list-style: none;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 9px;
	line-height: 180%;
}
</style>
</head>

<body>
	<%
		Administrator user = (Administrator) session.getAttribute("admin");
	%>
	<fieldset>
		<legend>
			<%
				if (user != null) {
			%>尊敬的：
			<%=user.getUserName()%>
			&nbsp;<a href="login.jsp">退出账号</a>
			<%
				} else {
			%>尚未登录账号<a href="register.jsp">点我注册新账号<%
				}
			%></a>
		</legend>
		<ul>
			<%
				java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
						"yyyy年MM月dd日  HH时mm分ss秒");

				String str_date1 = formatter.format(new Date(session
						.getCreationTime())); //将日期时间格式化
			%>
		<%if (user != null){%>	<li>登录时间：<%=str_date1%></li>
			<li>登录ID：<%=session.getId()%></li>
			<%
				Date date = new Date();//当前时间
				long endTime = date.getTime();//当前时间的毫秒数
				long startTime = new Date(session.getCreationTime()).getTime();
			%>
			<li>登录时长：<%=(endTime - startTime) / 1000%>秒
			</li>
			<%} %>
		</ul>
	</fieldset>

</body>
</html>









