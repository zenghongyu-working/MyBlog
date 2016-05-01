<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
.blog_content {
	text-indent: 10%;
	font-size: 20px;
	border-style: solid;
	border-color: gray;
}
</style>
<!--  <base href="<%=basePath%>">-->
<link href="./animate.css" rel="stylesheet">

<script src="./lettering.js"></script>
<script src="./textillate.js"></script>

<link rel="stylesheet" type="text/css" href="./normalize.css">
<link rel="stylesheet" type="text/css" href="./demo.css">
<link rel="stylesheet" type="text/css" href="./component.css">
<title>Red Fish's Blog</title>
<link rel="icon" href="redfish.png">
<link rel="stylesheet" href="reveal.css">
<script src="./modernizr.custom.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.6.min.js"></script>
<script type="text/javascript" src="jquery.reveal.js"></script>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<script type="text/javascript">
	function close() {
		document.getElementById("myModal").style.visibility = "hidden";
	}
</script>
<body style="zoom: 1;">
	<div id="myModal" class="reveal-modal">
		<h1 align="center">登录</h1>
		<s:form action="user_login">
			${param.loginError}
			<s:textfield name="user.username" label="用户名"></s:textfield>
			<s:password name="user.password" label="密码"></s:password>
			<s:submit value="登录"></s:submit>
			<s:submit value="注册" action="user_registerInput"></s:submit>
		</s:form>
		<a class="close-reveal-modal" href="javascript:close();">×</a>
	</div>
	<div class="container">
		<div id="st-container" class="st-container" style="overflow: scroll;">

			<p align="right" class="link">
				<a titile="github" href="https://github.com/zenghongyu-working">
					<img src="./github.jpg" alt="你网速也太慢了吧～"
					style="width: 25px; height: 25px;"> </a> &nbsp;&nbsp; <a
					titile="weibo"
					href="http://weibo.com/2462087407/profile?topnav=1&wvr=6&is_all=1">
					<img src="./weibo.jpg" alt="你网速也太慢了吧～"
					style="width: 24px; height: 24px;"> </a>&nbsp;&nbsp;&nbsp;

				<%
					if (session.getAttribute("username") != null) {
				%>
				欢迎
				<s:property value="#session.username" />
				,<a href="user_logout.action">注销</a>
				<%
					} else {
				%>
				<a href="#" data-reveal-id="myModal" data-animation="fade">登录</a>
				<%
					}
				%>
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
					href="http://localhost:8080/MyBlog/about/about.jsp">关于我</a></li>
				<li><a class="icon icon-study"
					href="http://localhost:8080/MyBlog/time/time_index.action">时间轴</a>
				</li>
				<li><a class="icon icon-photo"
					href="http://localhost:8080/MyBlog/forum/forum.html">论坛</a></li>
				<li><a class="icon icon-photo"
					href="http://localhost:8080/MyBlog/blog/blog_index.action">博客</a></li>
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

				<s:iterator value="#blogList" var="blog">

					<div class="blog_content" >
						<img alt="头像" src="me.jpg" width="45" height="45">
						<dl>
							<dt style="font-size: 35px">
								标题： <a
									href="blog_readBlog?id=<s:property value="#blog.id" escapeHtml="false" />"><s:property
										value="#blog.title" escapeHtml="false" /> </a>
							</dt>
							<dd>
								<p>
									日期：
									<s:date name="#blog.date" format="yyyy-MM-dd" />
								</p>
								<p>
									标签：
									<s:property value="#blog.classification" />
								</p>
							</dd>
						</dl>
					</div>
				</s:iterator>
				<div id="st-trigger-effects" class="column">
					<button data-effect="st-effect-11">
						<p class="text3">Back Home</p>
					</button>
				</div>
				<br> <br> <br> <br> <br> <br>
				<!-- /st-pusher -->
			</div>
			<!-- /st-pusher -->
		</div>
		<!-- /st-container -->
	</div>


	<%
		if (request.getParameter("loginError") != null) {
	%>
	<!--  <style type="text/css">
.reveal-modal{
	visibility: visible;
}
</style>-->
	<script type="text/javascript">
		document.getElementById("myModal").style.visibility = "visible";
	</script>
	<%
		}
	%>
	<script src="./classie.js"></script>
	<script src="./sidebarEffects.js"></script>
</body>
</html>
