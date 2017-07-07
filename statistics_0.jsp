<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.demo.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
<%! int count[]=new int[8]; //实例化车辆数和收费数组；
	int charge[]=new int[8];

 %>
		
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%			java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");


			String str_date1 = formatter.format(new Date()); //将日期时间格式化 
			int nowTime=Integer.parseInt(str_date1.substring(11, 13));
			ManageDao dao2 = new ManageDao();
			ArrayList<Vehicle> customer2 = dao2.findAllVehicle();
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out2 = response.getWriter();
			
			for (int i=0;i<customer2.size();i++) {
			
			int temp=Integer.parseInt(customer2.get(i).getEnterTime().substring(11, 13));
			//if (Math.abs(temp-nowTime)<16){
			switch((temp-temp%3)/3){
			case 0 :
			count[0]++;
			charge[0]+=4;
			break;
			
			case 1 :
			count[1]++;charge[1]+=4;
			break;
			
			case 2 :count[2]++;charge[2]+=4;
			break;
			
			case 3 :count[3]++;charge[3]+=Math.abs(Math.min(4,(Math.abs(temp-nowTime))))*4;
			break;
			
			case 4 :count[4]++;charge[4]+=Math.abs(Math.min(4,(Math.abs(temp-nowTime))))*4;
			break;
			
			case 5 :count[5]++;charge[5]+=Math.abs(Math.min(4,(Math.abs(temp-nowTime))))*4;
			break;
			
			
			case 6 :count[6]++;charge[6]+=Math.abs(Math.min(4,(Math.abs(temp-nowTime))))*4;
			break;
			
			case 7 :count[7]++;charge[7]+=4;
			break;
			}
			
			}
		//	}
	%>
<script type="text/javascript" src="jQuery.js"></script>
<script type="text/javascript" src="jqplot.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var data = [[<% for(int i:count){%><%=i%>,<%}%>],[<% for(int i:charge){%><%=i%>,<%}%>]];
	<%  Arrays.sort(charge); %>
	var data_max =<%=charge[7]/100*100+100%>; //Y轴最大刻度
	var line_title = ["A","B"]; //曲线名称
	var y_label = "停车及收费情况"; //Y轴标题
	var x_label = "时间段"; //X轴标题
	var x = ["0:00-3:00","3:01~6:00","6:01~8:00","8:01~:12:00","12:01~:15:00","15:01~18:00","18:01~20:00","20:01~0:00"]; //定义X轴刻度值
	var title = "这是标题"; //统计图标标题
	j.jqplot.diagram.base("chart1", data, line_title, "折线统计 单位（A-/辆 B-/元）", x, x_label, y_label, data_max, 1);
	j.jqplot.diagram.base("chart2", data, line_title, "条形统计 单位（A-/辆 B-/元）", x, x_label, y_label, data_max, 2);
});
</script>
<title>数据统计</title>
</head>
<body>

	
	<div id="chart1"></div>
	<div id="chart2"></div>
</body>
</html>
