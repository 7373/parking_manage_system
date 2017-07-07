<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>好看的用户登录html模板</title>
<base target="_blank" />
<script language="JavaScript" type="text/javascript">
	function custCheck() {

		var custName = document.getElementById("userName");
		var pass = document.getElementById("password");

		if (custName.value == "" || pass.value == "") {
			alert("输入的账号和密码均不能为空!");
			return false;
		}

	}
</script>

<style>
* {
	padding: 0px;
	margin: 0px;
}

a {
	color: blue
}

body {
	
}

img {
	border: 0;
}

.lg {
	width: 468px;
	height: 468px;
	margin: 100px auto;
	background: url(images/login_bg.png) no-repeat;
}

.lg_top {
	height: 200px;
	width: 468px;
}

.lg_main {
	width: 400px;
	height: 180px;
	margin: 0 25px;
}

.lg_m_1 {
	width: 290px;
	height: 100px;
	padding: 60px 55px 20px 55px;
}

.ur {
	height: 37px;
	border: 0;
	color: #666;
	width: 236px;
	margin: 4px 28px;
	background: url(images/user.png) no-repeat;
	padding-left: 10px;
	font-size: 16pt;
	font-family: Arial, Helvetica, sans-serif;
}

.pw {
	height: 37px;
	border: 0;
	color: #666;
	width: 236px;
	margin: 4px 28px;
	background: url(images/password.png) no-repeat;
	padding-left: 10px;
	font-size: 16pt;
	font-family: Arial, Helvetica, sans-serif;
}

.bn {
	width: 330px;
	height: 72px;
	background: url(images/enter.png) no-repeat;
	border: 0;
	display: block;
	font-size: 18px;
	color: #FFF;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bolder;
}

.lg_foot {
	height: 80px;
	width: 330px;
	padding: 6px 68px 0 68px;
}
</style>
</head>

<body class="b">
	<div class="lg">
		<form action="login.do" method="POST" onSubmit="return custCheck()">
			<div class="lg_top"></div>
			<div class="lg_main">
				<div class="lg_m_1">

					<p>
						账号<input name="username" class="ur" id="userName" />
					</p>
					<p>
						密码<input name="password" type="password" class="pw" id="password" />
					</p>

				</div>
			</div>
			<div class="lg_foot">
				<input type="submit" value="点这里登录" class="bn" />

			</div>
		</form>
	</div>
	<div style="text-align:center;">
		<p>
			<a href="index.jsp">首页</a>&nbsp;<a href="register.jsp">注册</a>
		</p>
	</div>
</body>
</html>
