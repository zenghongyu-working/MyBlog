<%@page import="com.zhy.model.MyPage"%>
<%@ page language="java" pageEncoding="UTF-8" import="java.util.*"
	errorPage=""%>
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
<link rel="stylesheet" href="blog.css" />
<script type="text/javascript">
	function close() {
		document.getElementById("myModal").style.visibility = "hidden";
	}
</script>
</head>
<body style="zoom: 1;" id="myBody">
	<nav class="st-menu st-effect-11" id="menu-11">
	<h2 class="icon icon-stack">红鱼</h2>
	<ul>
		<li><a class="icon icon-data"
			href="http://localhost:8080/MyBlog/index/index_index.action">首页</a></li>
		<li><a class="icon icon-location"
			href="http://localhost:8080/MyBlog/about/about.jsp">关于我</a>
		</li>
		<li><a class="icon icon-study"
			href="http://localhost:8080/MyBlog/time/time_index.action">时间轴</a></li>
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
	<div id="myModal" class="reveal-modal">
		<h1 align="center">登录</h1>
		<s:form action="user_login" style="margin-left:90px;">
			${param.loginError}
			<label>用户名:</label>
			<input type="text" name="username" class="textInput" size="25" />
			<label>密码:</label>
			<input type="password" name="password" class="textInput" size="25" />
			<input type="submit" value="提交" class="buttonInput" />
			<input type="button" value="注册" class="buttonInput"
				id="returnLoginButton" onclick="registerInput();" />
			<!-- <s:textfield name="username" label="用户名"></s:textfield>
			<s:password name="password" label="密码"></s:password>
			<s:submit value="登录"></s:submit>
			<s:submit value="注册" action="user_registerInput"></s:submit> -->
		</s:form>
		<a class="close-reveal-modal" href="javascript:close();">×</a>
	</div>

	<div id="top">
		<div id="top1">
			<div id="logo">
				<img id="img" src="images/redfish.png" data-effect="st-effect-11"></img>
			</div>
			<div id="txt">
				<span id="title">Welcome To My Blog</span>
			</div>
			<div id="login">
				<p align="right" class="link" style="margin-top: 15px;">
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
			</div>
		</div>
		<div id="nav">
			<ul id="nav_ul">
				<a href="http://localhost:8080/MyBlog/index/index_index.action"
					class="ul_a"><li class="nav_ul_li">首页</li> </a>
				<a href="http://lol.qq.com/main.shtml" class="ul_a"><li
					class="nav_ul_li">推荐</li> </a>
			</ul>
		</div>
		<div id="run">
			<div id="girl"></div>
		</div>
	</div>
	<div id="main">

		<div id="main1">
			<div id="main1_left">
				<div id="main1_div1">
					<h2>文章</h2>
				</div>
				<div id="main1_div2">
					<s:iterator value="#session.myPage.list" var="blog">

						<div class="blog_content">
							<h2 id="title_h2">
								<a id="title" name="title"
									href="blog_readBlog?id=<s:property value="#blog.id" escapeHtml="false" />"><s:property
										value="#blog.title" escapeHtml="false" /> </a>
							</h2>
							<p>
								<span>发布时间：<s:date name="#blog.date" format="yyyy-MM-dd" />
								</span> <span>[<s:property value="#blog.classification" />]</span>
							</p>
							<div>
								<a href="blog_readBlog?id=<s:property value="#blog.id" />"><img
									alt="封面图"
									src="./coverPic/<s:property
										value="#blog.title" escapeHtml="false" /> .jpg">
								</a>
								<div id="summary">
									<ul style="margin: 0;">
										<li><s:property value="#blog.content.substring(0,70)"
												escapeHtml="false" />
										<li><a
											href="blog_readBlog?id=<s:property value="#blog.id"/>">详细信息>></a>
									</ul>
								</div>
							</div>
						</div>
						<div id="line"></div>
					</s:iterator>
				</div>
				<div id="main1_div3">
					<%
						int currentPage = ((MyPage) (session.getAttribute("myPage")))
								.getCurrentPage();
						if (currentPage != 1) {
					%>
					<a href="blog_index.action?currentPage=<%=currentPage - 1%>">上一页</a>
					<%
						} else {
					%>
					<span>上一页</span>
					<%
						}
						if (currentPage != ((MyPage) (session.getAttribute("myPage")))
								.getTotalPage()) {
					%>
					<a href="blog_index.action?currentPage=<%=currentPage + 1%>">下一页</a>
					<%
						} else {
					%>
					<span>下一页</span>
					<%
						}
					%>
					<span>第<input id="inputPage" type="text"
						value="<%=currentPage%>" size="1"
						style="height: 30px;width: 25px;margin: 10px;" />页</span> <input
						type="button" onclick="submit();" value="跳转" />
				</div>
			</div>
			<div id="main1_right">
				<div id="main1_div3">
					<h2>关于我</h2>
				</div>
				<div id="main1_div4">
					<ul>
						<li><img src="images/me.jpg" /></li>
						<li>姓名：曾宏余</li>
						<li>年龄：21岁</li>
						<li>邮箱：zhy_working@163.com</li>
						<li>现位于：华南农业大学 计算机科学与技术 挖土ing....</li>
						<li><a href="https://github.com/zenghongyu-working"><img
								src="images/github.jpg" width="100px" height="100px" /> </a> <a
							href="http://weibo.com/2462087407/profile?topnav=1&wvr=6&is_all=1"><img
								src="images/weibo.jpg" width="100px" height="100px" /> </a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="bottom">
		<p class="dibu">
			<a href="http://localhost:8080/MyBlog/index/index_index.action">首页</a>
			<a href="#">联系我们</a> <a href="#">加入我们</a>
		</p>
		<p class="dibu">
			Copyright © 2016--2016 Powered By RED FISH <a
				href="http://www.miitbeian.gov.cn" target="_blank">粤ICP备16017268号-1</a>
		</p>
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
	<script type="text/javascript">
		function submit() {
			var page = document.getElementById("inputPage").value;
			window.location.href = 'blog_index.action?currentPage=' + page;
		}
	</script>
	<script type="text/javascript">
		function registerInput() {
			window.location.href = 'user_registerInput.action';
		}
	</script>
</body>
</html>