<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.demo.*"%>
<%@ page import="java.io.*"%>


<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.hovertable {
	font-family: verdana, arial, sans-serif;
	font-size: 15px;
	color: #333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}

table








.hovertable




 




th




 
	




background-color








:




 




#c3dde0








;
border-width








:




 




1
px








;
padding








:




 




8
px








;
border-style








:




 




solid








;
border-color








:




 




#a9c6c9








;
}
table.hovertable tr {
	background-color: #d4e3e5;
}

table.hovertable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
</style>
<%!int pageI = 1, best, mostPage;
	ManageDao dao2;
	ArrayList<Vehicle> customer2;%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>站点首页面</title>
<body>



	<!-- Table goes in the document BODY -->

	<h2 align="center">停车场收费信息</h2>

	<table align="center" class="hovertable" bgcolor='#d4e3e5'>
		<thead>

			<tr>
				<th>车位编号</th>
				<th>车牌号</th>
				<th>车辆类型</th>
				<th>费用</th>
			</tr>
		</thead>



		<%
			if ((request.getParameter("de")) != null) {
				pageI--;
			} else if ((request.getParameter("in")) != null) {
				pageI++;
			} else {
				dao2 = new ManageDao();
				customer2 = dao2.findAllVehicle();
			}
		%>

		<%
			int no = 1;
		%>
		<%
			mostPage = (customer2.size() + 1) / 10 + 1;

			if (pageI == (mostPage)) {
				best = customer2.size() % 10 + (mostPage - 1) * 10;

			} else
				best = (pageI) * 10;
			for (int index = (pageI - 1) * 10; index < best; index++) {
		%>

		<tr onmouseover="this.style.backgroundColor='#ffff66';"
			onmouseout="this.style.backgroundColor='#d4e3e5';">
			<td><%=no + (pageI - 1) * 10%>
			<td><%=customer2.get(index).getPlateNumber()%></td>
			<td><%=customer2.get(index).getType()%></td>

			<td><%=customer2.get(index).getCharge()%></td>
		</tr>
		<%
			no++;
			}
		%>

	</table>
	<form id="fd" action="" method="post">
		<p align="center">
			<input type="submit" value="上一页" name="de"> <input
				type="submit" value="下一页" name="in">
		</p>
	</form>
</body>
</html>