<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>顶部导航</title>
<style>
body{
    margin: 0;
    padding: 0;
    font: 14px/15pt;
   
}
#nav{
    width: 80%;
    margin: 50px auto;
    height: 46px;
    border-radius: 8px;
    border: 1px solid #cbcbcb;
    border-bottom: 4px solid #adadad;
    background: url(/images/20150501/navbg.png") 14.28% center no-repeat,
    url(/images/20150501/navbg.png") 28.56% center no-repeat,
    url(/images/20150501/navbg.png") 42.84% center no-repeat,
    url(/images/20150501/navbg.png") 57.18% center no-repeat,
    url(/images/20150501/navbg.png") 71.62% center no-repeat,
    #f3f3f3 url(/images/20150501/navbg.png") 85.80% center no-repeat;
}
#nav a{
    display: block;
    width: 14.28%;
    height: 46px;
    line-height: 46px;
    float: left;
    border-bottom: 4px solid #adadad;
    text-align: center;
    text-decoration: none;
    color: seagreen;
}
#nav a:first-child{
    border-radius: 0 0 0 8px;
}
#nav a:last-child{
    border-radius: 0 0 8px 0;
}
#nav a:hover{
    border-bottom: 4px solid red;
    color: red;
}
#nav a:first-child:hover{
    border-bottom: 4px solid red;
    border-radius: 0 0 0 8px;
}
#nav a:last-child:hover{
    border-bottom: 4px solid red;
}
</style>
</head>
<body>
<div id="nav">
    <a href="login.jsp">登录系统</a>
    <a href="enter_M.jsp">进场管理</a>
    <a href="charge_M.jsp">收费管理</a>
    <a href="find.jsp">停车记录查询</a>
    <a href="statistics.jsp">数据统计</a>
    <a href="index.jsp">维护系统</a>
    <a href="index.jsp">返回主页</a>
</div>
</body>
</html>