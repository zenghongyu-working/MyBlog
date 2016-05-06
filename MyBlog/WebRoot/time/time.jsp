<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<!--[if lt IE 7]>      <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="lt-ie10 lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie10 lt-ie9"> <![endif]-->
<!--[if IE 9]>         <html class="lt-ie10 is-ie9"> <![endif]-->
<!--[if IE 11]>        <html class="is-ie11"> <![endif]-->
<html lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://lib.sinaapp.com/js/jquery/2.0.3/jquery-2.0.3.min.js"></script>
<title>Welcome !My fish</title>
<link href="./animate.css" rel="stylesheet">
<script src="./lettering.js"></script>
<script src="./textillate.js"></script>

<link rel="icon" href="./redfish.png">
<link rel="stylesheet" type="text/css" href="./normalize.css" />
<link rel="stylesheet" type="text/css" href="./demo.css" />
<link rel="stylesheet" type="text/css" href="./component.css" />


<link rel="stylesheet" type="text/css" href="./normalize(1).css" />
<link rel="stylesheet" type="text/css" href="./demo(1).css" />
<link rel="stylesheet" type="text/css" href="./component(1).css" />

<!--test-->
<link rel="stylesheet" type="text/css" href="./dialog.css" />
<link rel="stylesheet" type="text/css" href="./dialog-wilma.css" />
<script src="./modernizr.custom.js"></script>
<!--test end-->

<script>
  $(function () {
    $('.text1').textillate({ in: { effect: 'rollIn' } });
    $('.text2').textillate({
      initialDelay: 1000,   //è®¾ç½®å¨ç»å¼å§æ¶é´
      in: { effect: 'flipInX' //è®¾ç½®å¨ç»åç§°
    }
  });
    $('.text3').textillate({
      initialDelay: 3000,
      in: { effect: 'bounceInDown' }
    });
    $('.text4').textillate({ 
      initialDelay: 1500,
      in: { effect: 'fadeIn' } });
    })
    $('.text5').textillate({
      initialDelay: 3000,   //è®¾ç½®å¨ç»å¼å§æ¶é´
      in: { effect: 'flipInX' //è®¾ç½®å¨ç»åç§°
      }
    });
  </script>

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
	font-size: 50px;
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
	font-size: 26px;
	color: #FFF
}

.text4 {
	font-family: microsoft yahei;
	text-align: center;
	font-size: 20px;
	color: #FFF
}

.text5 {
	font-family: microsoft yahei;
	text-align: center;
	font-size: 20px;
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
	margin: 60px auto;
	float: none;
	text-align: center;
	width: 100%;
	min-height: 100px;
}
</style>
<script src="./modernizr.custom(1).js"></script>

</head>

<body>

	<div class="container">
		<div id="st-container" class="st-container">
			<p align="right" class="link">
				<a titile="github" href="https://github.com/zenghongyu-working">
					<img src="./github.jpg" alt="你网速也太慢了吧～"
					style="width: 25px; height: 25px;"> </a> &nbsp;&nbsp; <a
					titile="weibo"
					href="http://weibo.com/2462087407/profile?topnav=1&wvr=6&is_all=1">
					<img src="./weibo.jpg" alt="你网速也太慢了吧～"
					style="width: 24px; height: 24px;"> </a>&nbsp;&nbsp;&nbsp;
			</p>


			<nav class="st-menu st-effect-1" id="menu-11">
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
				<div class="st-content-inner">
					<!-- extra div for emulating position:fixed of the menu -->
					<p class="text1">红鱼</p>
					<p class="text2" style="font-size:24px">Think it , more
						than&nbsp; what you do</p>
					<hr />
					<p class="text1" style="font-size:24px">聊聊生活</p>
					<p id="st-trigger-effects" align="center">
						<button data-effect="st-effect-1">back</button>
						OR
						<button style="background:#CD2626" data-effect="st-effect-9">fuck</button>
					</p>

				</div>
				<!-- /st-pusher -->
				<section class="grid-wrap">
					<ul class="grid swipe-right" id="grid">
						<s:iterator value="#application.timeList" var="time">
							<li><a href=""><img
									src="./<%=(int) (new Random().nextDouble() * 13) + 1%>.jpg"
									alt="">
									<h3>
										<s:date name="#time.date" format="yyyy.MM  " />
										<s:property value="#time.detail" />
									</h3> </a></li>
						</s:iterator>
						<!--           <li><a href="http://www.behance.net/gallery/13285315/Quarterly-Musashino-winter-of-2013-issue"><img src="/static/img/img-photo/13.jpg" alt="img13"><h3>Quarterly Musashino winter of 2013 issue</h3></a></li>
          <li><a href="http://www.behance.net/gallery/16541811/MAINICHI-CHUUGOKUGO-May-2014"><img src="/static/img/img-photo/14.jpg" alt="img14"><h3>MAINICHI CHUUGOKUGO April 2014</h3></a></li> -->
					</ul>
				</section>
			</div>
			<!-- /st-pusher -->
			<script src="./modernizr.custom(2).js"></script>

			<script src="./masonry.pkgd.min.js"></script>
			<script src="./imagesloaded.pkgd.min.js"></script>
			<script src="./classie.js"></script>
			<script src="./colorfinder-1.1.js"></script>
			<script src="./gridScrollFx.js"></script>
			<script>
      new GridScrollFx( document.getElementById( 'grid' ), {
        viewportFactor : 0.4
      } );
    </script>
		</div>
		<!-- /st-container -->
	</div>


	<script src="./classie(1).js"></script>
	<script src="./dialogFx.js"></script>
	<script>
      (function() {

        var dlgtrigger = document.querySelector( '[data-dialog]' ),
          somedialog = document.getElementById( dlgtrigger.getAttribute( 'data-dialog' ) ),
          dlg = new DialogFx( somedialog );

        dlgtrigger.addEventListener( 'click', dlg.toggle.bind(dlg) );

      })();
    </script>
	<script src="./classie(2).js"></script>
	<script src="./sidebarEffects.js"></script>

	<copyright>
	<hr>
	<p align="center" style="font-size:14px;color:#FFFFFF;">RedFish DO
		WHAT YOU WANT</p>
	<p align="center" style="font-size:14px;color:#FFFFFF;">
		红鱼™ Copyright © 2016--2016 Powered By TREES <a
			href="http://www.miitbeian.gov.cn" target="_blank">粤ICP备16017268号-1</a>
	</p>
	</copyright>
</body>
</html>