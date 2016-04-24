<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link type="text/css" rel="stylesheet" href="style/reset.css">
<link type="text/css" rel="stylesheet" href="style/main.css">

<script type="text/javascript" src="js/DD_belatedPNG_0.0.8a-min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/ie6Fixpng.js" charset="utf-8"></script>

</head>

<body>
<div class="headerBar">
	<div class="logoBar red_logo">
		<div class="comWidth">
			<div class="logo fl">
				<a href="index.jsp"><img src="images/logo.jpg" alt="Clementine电商网"></a>
			</div>
			<h3 class="welcome_title">欢迎注册</h3>
		</div>
	</div>
</div>


<div class="regBox">
	<div class="login_cont">
	<form action="dologin.jsp" method="post" >
		<ul class="login">
			<li><span class="reg_item"><i>*</i>用户名称：</span><div class="input_item" ><input type="text" class="login_input user_icon" name="username" placeholder="Username"></div></li>
			<li><span class="reg_item"><i>*</i>设置密码：</span><div class="input_item"><input type="password" class="login_input user_icon" name="password" placeholder="Password"></div></li>
			<li><span class="reg_item"><i>*</i>重复密码：</span><div class="input_item"><input type="password" class="login_input user_icon" name="passagain" placeholder="Password"></div></li>
			<li><span class="reg_item"><i>*</i>手机号码：</span><div class="input_item"><input type="text" class="login_input user_icon" name="phone" placeholder="Phone"></div></li>
			<li><span class="reg_item"><i>*</i>邮箱号码：</span><div class="input_item"><input type="text" class="login_input user_icon" name="email" placeholder="Email"></div></li>
			<li class="autoLogin"><span class="reg_item">&nbsp;</span><input type="checkbox" id="t1" class="checked"><label for="t1">我同意什么什么条款</label></li>
			<li><span class="reg_item">&nbsp;</span><input type="button" value="" class="login_btn"></li>
		</ul>	
		</form> 
	</div>
</div>


<div class="hr_25"></div>
<div class="footer">
	<p><a href="#">Clementine电商简介</a><i>|</i><a href="#">Clementine电商公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i><a href="#">联系我们</a><i>|</i>客服热线：400-675-1234</p>
	<p>Copyright &copy; 2006 - 2014 Clementine电商版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号&nbsp;&nbsp;&nbsp;京ICP证B1034-8373号&nbsp;&nbsp;&nbsp;某市公安局XX分局备案编号：123456789123</p>
	<p class="web"><a href="#"><img src="images/webLogo.jpg" alt="logo"></a><a href="#"><img src="images/webLogo.jpg" alt="logo"></a><a href="#"><img src="images/webLogo.jpg" alt="logo"></a><a href="#"><img src="images/webLogo.jpg" alt="logo"></a></p>
</div>
</body>
</html>
