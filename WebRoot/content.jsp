<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery五屏轮播手风琴代码 - 站长素材</title>
<style type="text/css">
*{padding:0;margin:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}
/* demo */
/*五张图片在缩略图时所显示的位置调整*/
#demo li:nth-of-type(1) img{ transform: translate(-210px);}
#demo li:nth-of-type(2) img{ transform: translate(-180px);}
#demo li:nth-of-type(3) img{ transform: translate(-380px);}
#demo li:nth-of-type(4) img{ transform: translate(-450px);}
#demo li:nth-of-type(5) img{ transform: translate(-320px);}
#demo{width:1160px;height:512px;margin:60px auto 0 auto;}
#demo img{width: 820px; height: 512px; max-width: 820px;}
#demo li{float:left;position:relative;width:82px;height:100%;overflow:hidden;cursor:pointer; transition:0.5s; transform-origin:bottom;filter:alpha(opacity=50);opacity:0.5;}
#demo li img{transition:1.2s;}
#demo li a{display:block;}
#demo li div{position:absolute;bottom:0;left:0;width:100%;background:#000;line-height:32px;filter:alpha(opacity=70);opacity:0.7;text-indent:2em;}
#demo li div a{color:#FFF;text-decoration:none;}
#demo li div a:hover{color:#F00;text-decoration:none;}
#demo li.active{cursor:pointer; transform:scale(1.02,1.08); z-index:3;width:820px;filter:alpha(opacity=100);opacity:1;}
#demo li.active img{transform:translate(0px);}
#demo li:nth-of-type(1){transform-origin:bottom left;}
#demo li:nth-of-type(5){transform-origin:bottom right;}
</style>
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="jquery.indexSlidePattern.js"></script>
<script language="javascript">
$(document).ready(function(e){
	  var opt	=	{
		"speed"	:	"fast"		,	//变换速度,三速度可选 slow,normal,fast;
		"by"	:	"mouseover"		,	//触发事件,click或者mouseover;
		"auto"	:	true		,	//是否自动播放;
		"sec"	:	3000	 		//自动播放间隔;
	  };
      $("#demo").IMGDEMO(opt);    
});
</script>

</head>
<body>

<ul id="demo">
	<li class="active">
		<a href="enter_M.jsp"><img src="images/5.jpg"  /></a>
		<div><a href="enter_M.jsp">welcome! 1号停车位</a></div>
	</li>
	<li>
		<a href="enter_M.jsp"><img src="images/2.jpg"  /></a>
		<div><a href="enter_M.jsp">welcome! 2号停车位</a></div>
	</li>
	<li>
		<a href="enter_M.jsp"><img src="images/3.jpg"  /></a>
		<div><a href="enter_M.jsp">welcome! 3号停车位</a></div>
	</li> 
	<li>
		<a href="enter_M.jsp"><img src="images/4.jpg"  /></a>
		<div><a href="enter_M.jsp">welcome! 4号停车位</a></div>
	</li>
	<li>
		<a href="enter_M.jsp"><img src="images/1.jpg"  /></a>
		<div><a href="enter_M.jsp">welcome! 5号停车位</a></div>
	</li>
</ul>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>


</body>
</html>