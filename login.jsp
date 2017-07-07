
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.demo.*"%>
<%@   page import="java.util.Date"%>
<script language="JavaScript" type="text/javascript">
   function check1(){
       open("register.jsp","register");
   }
</script>

<%
session.removeAttribute("admin");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<link href="css\layout.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="container">
		<div id="header"><%@ include file="header.jsp"%></div>
		<div id="topmenu"><jsp:include page="topmenu.jsp" flush="true"></jsp:include></div>
		<div id="mainContent">
			<div id="leftmenu"><jsp:include page="leftmenu.jsp" flush="true"></jsp:include></div> 
			<div id="content"><jsp:include page="login_0.jsp" flush="true"></jsp:include></div>
		</div>
		<div id="footer"><%@ include file="footer.jsp"%></div>
	</div>
</body>
</html>
