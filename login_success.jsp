<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>登陆成功</title>
<link type="text/css" rel="stylesheet" href="style/reset.css">
<link type="text/css" rel="stylesheet" href="style/main.css">
<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript" src="js/ie6Fixpng.js"></script>
<![endif]-->
</head>

<body>
<div class="headerBar">
	<div class="logoBar login_logo">
		<div class="comWidth">
			<div class="logo fl">
				<a href="index.jsp"><img src="images/logo.jpg" alt="Clementine电商网"></a>
			</div>
			<h3 class="welcome_title">登陆成功</h3>
		</div>
	</div>
</div>

<div class="loginBox">
<% 
	
	 String loginUser = "";
	if(session.getAttribute("loginUser")!=null)
	 {
   		loginUser = session.getAttribute("loginUser").toString();
 	}
%>
 欢迎您<font color="#1D7AD9"><%=loginUser%></font>,登录成功！
</div>

<div class="hr_25"></div>
<div class="footer">
	<p><a href="#">Clementine电商简介</a><i>|</i><a href="#">Clementine电商公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i><a href="#">联系我们</a><i>|</i>客服热线：400-675-1234</p>
	<p>Copyright &copy;2016 - 2014 Clementine电商版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号&nbsp;&nbsp;&nbsp;京ICP证B1034-8373号&nbsp;&nbsp;&nbsp;某市公安局XX分局备案编号：123456789123</p>
	<p class="web"><a href="#"><img src="images/webLogo.jpg" alt="logo"></a><a href="#"><img src="images/webLogo.jpg" alt="logo"></a><a href="#"><img src="images/webLogo.jpg" alt="logo"></a><a href="#"><img src="images/webLogo.jpg" alt="logo"></a></p>
</div>
</body>
</html>
