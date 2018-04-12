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
<!--  <base href="<%=basePath%>">-->

<title>注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="register.css">
<script type="text/javascript" src="jquery-2.0.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#username").blur(function() {
			$.get("user_checkUsername.action?username=" + $("#username").val(), function(data) {
				if (data.success) {
					$("#result").html(data.msg);
				} else {
					$("#result").html("发生错误：" + data.msg);
				}
			}, "json");

			/*$.ajax({
				type:"POST",
				url:"user_checkUsername",
				dataType:"json",
				success:function(data){
					if (data.success){
						$("#result").html(data.msg);
					}else{
						$("#result").html("发生错误：" + data.msg);
					}
				},
				error:function(jqXHR){
					alert("发生错误：" + jqXHR.status);
				}
			});*/
		});
	});
</script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<!-- 
<s:textfield name="username" label="用户名"></s:textfield>
			<s:password name="password" label="密码"></s:password>
			<s:submit value="提交"></s:submit>
			<s:submit value="返回登录" action="blog_index"></s:submit>
 -->
<body>
	<div id="top">
		<span>注册</span>
	</div>
	<div id="main">
		<s:form action="user_add">
		${param.registerError }
		<label>用户名:</label>
			<span id="result"></span>
			<input type="text" name="username" id="username" class="textInput" size="25" />
			<label>密码:</label>
			<input type="password" name="password" class="textInput" size="25" />
			<input type="submit" value="提交" class="buttonInput" />
			<input type="button" value="返回登录" class="buttonInput" id="returnLoginButton"
				onclick="returnLogin();" />
		</s:form>
	</div>
	<script type="text/javascript">
		function returnLogin() {
			window.location.href = 'blog_index.action';
		}
	</script>
</body>
</html>
