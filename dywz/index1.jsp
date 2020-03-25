<html>
	<head>
		<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
		<meta name="ProgId" content="FrontPage.Editor.Document">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>index</title>
		<style type="text/css">
		
			div{list-style: none;}
			*{margin: 0;padding: 0;}
.top{
	height:35px; 
	background:#f4f4f4;
	border-top:#C33 solid 3px;}
.top p{
	margin-bottom:4px;
	height:40px;
	line-height:35px;
	}
.top p li{
    text-align: center;}
.top p a{
	color:#333;}
.top p a:hover{ 
	color:#090;
	text-decoration:none;}
			ul{
				list-style: none;
			}
			a{
				text-decoration: none;
			}
			#nav ul{
				width: 1340px;
				height: 50px;
				border-bottom: 4px double ;
				margin: 0 auto;
			}
			#nav ul li{
				width: 20%;
				line-height: 50px;
				float: left;
				text-align: center;
			} 
			#nav ul li a{
				display: block;
				background: white;
				font-size:22px;
			}
			#nav ul li a:hover{
				background: orange;
				/*color: deeppink;*/
			}
			.two li{
			        margin-left:3px;
					width: 110px;
					height: 2px;
					/*margin: 100px 20px;*/
			}
			.two li .title{
				width: 94%;
				float: left;
				line-height: 90px;					
				text-align: center;
			}
			.two li a{
				display: block;
				font-size: 17px;
			}
			.two li:hover .title{
				background: orange;
				color: blue;
				margin-top:10px;
			}
			.wrap{
				width: 1200px;
				height: 620px;
				margin: 0 auto;
			}
			.wrap li{
				list-style: none;
				display: inline-block;
			}
			.wrap li .boxCont{
				overflow: hidden;
			}
			.wrap li .boxCont img{
				width: 100%;
				height: 100%;
				transition: all 3s;
			}
			.wrap li:hover .boxCont img{
				transform: scale(1.5);
			}
			.one{
				width: 1130px;
				height: 550px;
				margin: 0 auto;
				background: url(img/1.JPG);
				animation: run 12s infinite;
			}
			@keyframes run{
					0%{background: url(imge/01.jpg);background-size: 100% 100%;}
					20%{background: url(imge/02.jpg);background-size: 100% 100%;}
					40%{background: url(imge/03.jpg);background-size: 100% 100%;}
					60%{background: url(imge/04.jpg);background-size: 100% 100%;}
					80%{background: url(imge/05.jpg);background-size: 100% 100%;}
					100%{background: url(imge/01.jpg);background-size: 100% 100%;}
			}
			.one img{
				position: absolute;
				top: 500px;
				left: 0;
			}
			.xian{
				position:absolute;
				margin:45px 0px 50px 1150px;
			}
			input[type="submit"]{
			     background:#0066FF;
				 font-size:18px;
				 margin:15px 15px;
			}
.footer{
	height:100px;
	background: linear-gradient(#E0E0E0 0%,#fff 100%);
	width:100%;
	margin-top:30px;
	}
.footer p{
	font-size:14px;
	text-align:center;
	line-height:26px;
	padding-top:30px;
	color:gray;}
</style>
	</head>
		<body bgcolor="#FFFFFF" background="images/bj.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<%@ page contentType="text/html;charset=gb2312"%>
		<%@ page language="java" import="java.sql.*"%>
		<%--@include file="protect/protect.jsp"--%>
		<jsp:useBean id="indexbean" scope="page" class="mydb.mydb"/>
        
        <div class="top">
	<p class="wrap">您已成功登陆！or <a href="index.html"><strong>退出？</strong></a></p>
</div>

		<div id="nav">
			<ul>
				<li><a href="index1.jsp">首页</a></li>
				<li><a href="shop/list.jsp">购物车</a></li>
				<li><a href="shop/orderkan.jsp">订单</a></li>
				<li><a href="notice/main1.jsp">系统消息</a></li>
				<li><a href="food/food.html">观影零食</a></li>
			</ul>
			
			<div class="two">
				<li>
					<div class="title">
					<a href="newfilm/newfilm.jsp">最新电影</a>
					</div>
				</li>
				<li>
					<div class="title">
					<a href="film/hotfilm.html">最热电影</a>
					</div>
				</li>
				<li>
					<div class="title">
					<a href="film/happyfilm.html">喜剧电影</a>
					</div>
				</li>
				<li>
					<div class="title">
					<a href="film/actionfilm.html">动作电影</a>
					</div>
				</li>
				<li>
					<div class="title">
					<a href="film/fantasyfilm.html">奇幻电影</a>
					</div>
				</li>
			</div>
			<div class="one">
				<div class="xian" style="top: 68px; left: 84px;">
					<table id="__01"align="center" width="100px" border="0" cellpadding="0" cellspacing="0" style="top: -10px; height: 550px;">
						<tr>
							<td rowspan="4"></td>
							<td colspan="2" rowspan="2">
							<form method="post" action="login/modify.jsp" >
							<p align="left">&nbsp;&nbsp;<font face="华文隶书" size="+1">昵称：<%=(String)session.getValue("name")%></p>
							<p align="left">&nbsp;<font face="华文隶书" size="+1">性别：<%=(String)session.getValue("sex")%></p>
							<p align="left"><font face="楷书"><input type="submit" name="Submit" value="修改个人资料"></p>
							</form>
							
							</td>
							</tr>
				</div>
			</div>
		</div>
   </body>
	<div class="footer">
<p>
    	<strong>感谢您使用电影订票系统，期待您的下次光临！</strong>
    </p></div>
</html>
