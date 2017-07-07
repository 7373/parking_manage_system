<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.demo.*"%>
<%@ page import="java.io.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>查询结果</title>
<link href="css\layout.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="container">
		<div id="header"><%@ include file="header.jsp"%></div>
		<div id="topmenu"><jsp:include page="topmenu.jsp" flush="true"></jsp:include></div>
		<div id="mainContent">
			<div id="leftmenu"><%@ include file="leftmenu.jsp"%></div>
			<div id="content">

				<table align="center">
					<tr style="background:#CCCCFF ">
						<td>车牌号</td>
						<td>车辆类型</td>
						<td>停车时间</td>
						<td>出场时间</td>
						<td>停车时长</td>
						<td>费用</td>
					</tr>
					<c:forEach var="book" items="${requestScope.customer2}"
						varStatus="status">
						<%--为奇数行和偶数行设置不同的背景颜色--%>
						<c:if test="${status.count%2==0}">
							<tr style="background:#99FF99">
						</c:if>
						<c:if test="${status.count%2!=0}">
							<tr style="background: ">
						</c:if>
						<%--用EL访问作用域变量的成员--%>
						<td>${book.plateNumber}</td>
						<td>${book.type}</td>
						<td>${book.enterTime}</td>
						<td>${book.leaveTime}</td>
						<td>${book.parkingTime}</td>
						<td>${book.charge}</td>

						</tr>
					</c:forEach>
				</table>

			</div>
		</div>

		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<div id="footer"><%@ include file="footer.jsp"%></div>
	</div>
</body>
</html>
