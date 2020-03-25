<html>
	<head>
		<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
		<meta name="ProgId" content="FrontPage.Editor.Document">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>index2</title>
		<style type="text/css">
			div{list-style: none;}
			*{margin: 0;padding: 0;}
			ul{
				list-style: none;
			}
			a{
				text-decoration: none;
			}
			.two{
				width:1300px;
				height:100px;
			}
			.two img{
				width:1350px;
				height:100px;
			}
			#nav ul{
				width: 1300px;
				height: 50px;
				border: 1px solid red;
				margin: 0 auto;
			}
			#nav ul li{
				width: 14.28%;
				line-height: 50px;
				float: left;
				text-align: center;
			}
			#nav ul li a{
				display: block;
				background: black;
				color: deepskyblue;
				font-weight: bold;
			}
			#nav ul li a:hover{
				background: white;
				color: deeppink;
			}
			.wrap{
				width: 900px;
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
				width: 1100px;
				height: 550px;
				margin: 0 auto;
			}
			.three{
				margin:100px 140px;
			}
			.four{
				margin:0 200px;
			}
		</style>
	</head>
	<body>
		<body>
		<%@ page contentType="text/html;charset=gb2312"%>
		<%@ page language="java" import="java.sql.*"%>
		<%--@include file="protect/protect.jsp"--%>
		<jsp:useBean id="indexbean" scope="page" class="mydb.mydb"/>
		<div id="nav">
			    <div class="two">
				    <img src="img/12.JPG">
				</div>
			<ul>
				<li><a href="index2.jsp">首页</a></li>
				<li><a href="user2/yhgl.html">用户信息管理</a></li>
				<li><a href="user1/yhgl.html">管理员信息管理</a></li>
				<li><a href="book/bookgl.html">电影信息管理</a></li>
				<li><a href="notice/noticegl.html">零食信息管理</a></li>
				<li><a href="order/ordergl.html">订单信息管理</a></li>
				<li><a href="index.html">注销</a></li>
			</ul>
				<div class="three"><img src="img/13.JPG"></div>
				<div class="four"><img src="img/14.JPG"></div>
		</div>
		

	</body>
</html>
