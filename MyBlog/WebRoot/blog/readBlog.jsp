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
<!-- <base href="<%=basePath%>">-->

<title><s:property value="#blog.title" /></title>
<link rel="icon" href="redfish.png">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="readblog.css">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<div id="top">
		<div id="top_left">
			<a href="http://localhost:8080/MyBlog/index/index_index.action"></a>
		</div>
		<div id="top_right">
			<ul id="top_ul">
				<a href="http://localhost:8080/MyBlog/index/index_index.action"
					class="top_li_a"><li>首页</li> </a>
				<a href="http://localhost:8080/MyBlog/about/about.jsp"
					class="top_li_a"><li>关于我</li> </a>
				<a href="#" class="top_li_a"><li>技术分享</li> </a>
				<a href="#" class="top_li_a"><li>慢生活</li> </a>
				<a href="http://localhost:8080/MyBlog/time/time_index.action"
					class="top_li_a"><li>时间轴</li> </a>
				<a
					href="http://localhost:8080/MyBlog/more/messageBoard_index.action"
					class="top_li_a"><li>留言板</li> </a>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="left">
			<div id="article">
				<div id="title">
					<span> <s:property value="#blog.title" /> </span>
				</div>
				<div id="detail">
					<span>发布时间：<s:date name="#blog.date" format="yyyy-MM-dd" />
					</span> <span>编辑：<a
						href="http://localhost:8080/MyBlog/about/about.jsp">曾宏余</a> </span>
				</div>
				<div id="content">
					<span> <s:property value="#blog.content" escape="false" /> </span>
				</div>
			</div>
			<!-- 多说评论框 start -->
			<div class="ds-thread"
				data-thread-key="<s:property value="#blog.id" />"
				data-title="<s:property value="#blog.title" />"
				data-url="http://localhost:8080/MyBlog/blog/blog_readBlog?id=<s:property value="#blog.id" />"></div>
			<!-- 多说评论框 end -->
		</div>
		<div id="right">
			<div id="right1">
				<span>热评文章</span>
				<!-- 多说热评文章 start -->
				<div class="ds-top-threads" data-range="daily" data-num-items="5"></div>
				<!-- 多说热评文章 end -->
			</div>
		</div>
	</div>

	<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
	<script type="text/javascript">
		var duoshuoQuery = {
			short_name : "iamhong"
		};
		(function() {
			var ds = document.createElement('script');
			ds.type = 'text/javascript';
			ds.async = true;
			ds.src = (document.location.protocol == 'https:' ? 'https:'
					: 'http:')
					+ '//static.duoshuo.com/embed.js';
			ds.charset = 'UTF-8';
			(document.getElementsByTagName('head')[0] || document
					.getElementsByTagName('body')[0]).appendChild(ds);
		})();
	</script>
	<!-- 多说公共JS代码 end -->
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
</body>
</html>
