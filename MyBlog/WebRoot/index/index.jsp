<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml"
	class=" js csstransforms3d">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="chrome=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="./jquery-2.0.3.min.js"></script>

<title>Welcome !My fish</title>
<link href="./animate.css" rel="stylesheet">

<script src="./lettering.js"></script>
<script src="./textillate.js"></script>

<link rel="icon" href="redfish.png">
<link rel="stylesheet" type="text/css" href="./normalize.css">
<link rel="stylesheet" type="text/css" href="./demo.css">
<link rel="stylesheet" type="text/css" href="./component.css">

<script>

$(function () {
  $('.text1').textillate({ in: { effect: 'rollIn' } });
  $('.text2').textillate({
    initialDelay: 1000,   //设置动画开始时间
    in: { effect: 'flipInX' //设置动画名称
    }
  });
  $('.text3').textillate({
    initialDelay: 3000,
    in: { effect: 'bounceInDown'}
  });
  $('.text4').textillate({ 
    initialDelay: 3500,
    in: { effect: 'fadeIn'} });
})

</script>

<script src="./modernizr.custom.js"></script>

<style type="text/css">
body {
	background: #201C26;
}

.st-content-inner {
	width: 500px;
	margin: 0 auto;
}

.text1,.text2,.text3 {
	visibility: hidden;
}

.text1,.text2 {
	color: #fff;
	color: #fff;
}

.text2 {
	letter-spacing: 3px;
}

.text1 {
	margin: 50px;
	text-align: center;
	font-size: 135px;
	text-shadow: 0.025em 0.025em 0.025em rgba(0, 0, 0, 0.8);
}

.text2 {
	font-family: microsoft yahei;
	font-size: 14px;
	line-height: 24px;
	text-shadow: 0.1em 0.1em 0.1em rgba(0, 0, 0, 0.8)
}

.text3 {
	font-family: microsoft yahei;
	text-align: center;
	font-size: 36px;
	color: #FFF
}

.text4 {
	font-family: microsoft yahei;
	text-align: center;
	font-size: 30px;
	color: #FFF
}

center {
	bottom: 30px;
	text-align: center;
	width: 100%;
}

center a {
	margin: 20px;
	color: #666;
	text-decoration: none;
}

center a:hover {
	margin: 20px;
	color: #666;
	text-decoration: underline;
}

.column {
	margin: 20px auto;
	float: none;
	text-align: center;
	width: 70%;
	min-height: 100px;
}
</style>
</head>


<body style="zoom: 1;" >
	<div class="container">
		<div id="st-container" class="st-container">

			<p align="right" class="link">
				<a titile="github" href="https://github.com/zenghongyu-working">
					<img src="./github.jpg" alt="你网速也太慢了吧～"
					style="width: 25px; height: 25px;"> </a> &nbsp;&nbsp; <a
					titile="weibo"
					href="http://weibo.com/2462087407/profile?topnav=1&wvr=6&is_all=1">
					<img src="./weibo.jpg" alt="你网速也太慢了吧～"
					style="width: 24px; height: 24px;"> </a>&nbsp;&nbsp;&nbsp;
			</p>
			<!--  
        example menus 
        these menus will be on top of the push wrapper
      -->


			<nav class="st-menu st-effect-11" id="menu-11">
				<h2 class="icon icon-stack">红鱼</h2>
				<ul>
					<li><a class="icon icon-data"
						href="http://localhost:8080/MyBlog/index/index_index.action">首页</a>
					</li>
					<li><a class="icon icon-location"
						href="http://localhost:8080/MyBlog/about/about.jsp">关于我</a>
					</li>
					<li><a class="icon icon-study"
						href="http://localhost:8080/MyBlog/time/time_index.action">时间轴</a>
					</li>
					<li><a class="icon icon-photo"
						href="http://localhost:8080/MyBlog/forum/forum.html">论坛</a>
					</li>
					<li><a class="icon icon-photo"
						href="http://localhost:8080/MyBlog/blog/blog_index.action">博客</a>
					</li>
					<li><a class="icon icon-wallet"
						href="http://localhost:8080/MyBlog/more/messageBoard_index.action">More</a>
					</li>
				</ul>
			</nav>

			<!-- content push wrapper -->
			<div class="st-pusher">
				<!--  
          example menus 
          these menus will be under the push wrapper
        -->
				<div class="st-content-inner">
					<!-- extra div for emulating position:fixed of the menu -->

					<p class="text1">红鱼</p>
					<p class="text2">一匹真正的好马，即使在鞭子的影子下，也能飞奔~~~~~~~~~欢迎您访问我的网站Y(^_^)Y</p>

					<div id="st-trigger-effects" class="column">
						<button data-effect="st-effect-11">
							<p class="text3">WELCOME</p>
						</button>
					</div>
					<br> <br> <br> <br> <br> <br>
				</div>
				<!-- /st-pusher -->
			</div>
			<!-- /st-pusher -->
		</div>
		<!-- /st-container -->
	</div>

	<script src="./classie.js"></script>
	<script src="./sidebarEffects.js"></script>

	<copyright>
	<hr>
	<p align="center" style="font-size:14px;color:#FFFFFF;">RedFish DO
		WHAT YOU WANT</p>
	<p align="center" style="font-size:14px;color:#FFFFFF;">红鱼™
		Copyright © 2016--2016 Powered By TREES
		<a href="http://www.miitbeian.gov.cn" target="_blank">粤ICP备16017268号-1</a>
	</p>
	</copyright>

</body>
</html>