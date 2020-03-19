<html>
<head>
<title>modify</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
	div{list-style: none;}
			*{margin: 0;padding: 0;}
			ul{
				list-style: none;
			}
			a{
				text-decoration: none;
			}
			.aa{
				width:1350px;
				height:580px;
			}
			#nav ul{
				width: 1300px;
				height: 50px;
				border: 1px solid red;
				margin: 0 auto;
			}
			#nav ul li{
				width: 14.285%;
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
			.two ul{
				height:33.34%;
				width: 150px;
				height: 400px;
				border: 1px solid pink;
				margin: 0 30px;
			}
			.two ul li{
				line-height: 135px;
				float: center;
				text-align: center;
			}
			.two ul li a{
				display: block;
				background:deepskyblue;
				color: black;
				font-weight: bold;
			}
			.two ul li a:hover{
				background: white;
				color: deeppink;
			}
			.too{
				width:1300px;
				height:100px;
			}
			.too img{
				width:1350px;
				height:100px;
			}
			.three{
				width:1150px;
				margin:-400px 200px;
			}
			.one{
				width:1150px;
			}
			input[type="text"]
			{
				font-size:15px;
			}
			input[type="submit"]{
		       	font-size: 15px;
				margin:0 5px;
		       	background:deepskyblue;
		       	opacity: 0.8;
		       	width:80px;
		       	height:30px;
		 	 }
			 input[type="reset"]{
		        float: right;
		       	font-size: 15px;
				margin:0 90px;
		       	background:deepskyblue;
		       	opacity: 0.8;
		       	width:40px;
		       	height:30px;
		 	 }
</style>
</head>
<body>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<div class="aa">
	<div id="nav">
			  <div class="too">
				    <img src="../img/12.JPG">
				</div>
			<ul>
				<li><a href="../index2.jsp">首页</a></li>
				<li><a href="../user2/yhgl.html">用户信息管理</a></li>
				<li><a href="../user1/yhgl.html">管理员信息管理</a></li>
				<li><a href="../book/bookgl.html">图书信息管理</a></li>
				<li><a href="../notice/noticegl.html">留言管理</a></li>
				<li><a href="../order/ordergl.html">订单信息管理</a></li>
				<li><a href="../index.html">注销</a></li>
			</ul>
	    </div>
		<div class="two">
		<ul>
			<li><a href="orderlist.jsp">查看所有订单</a></li>
			<li><a href="orderedit.jsp">更改订单信息</a></li>
			<li><a href="orderdelete.jsp">删除订单信息</a></li>
			</ul>
		<div class="three">		
<!-- ImageReady Slices (modify) -->
<table>
			<jsp:useBean id="editbean" scope="page" class="mydb.mydb"/>
			<form action="orderedit1.jsp" method="post">
			<tr>
			<td colspan="4">
			<input type="text" name="NAME">
			<input type="submit" value="查找">*请输入用户名（不可以更改用户名、书名、订单日期）</td>
			</tr>
			</form>
			<tr>
			<td>&nbsp;用户名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数量&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;订单日期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;订单状态&nbsp;&nbsp;快递方式</td>
			</tr>

<%
	String NAME = new String(request.getParameter("NAME").getBytes("ISO8859_1"));
	int recordcount;
 
	 //计算记录总数 
	String sql="select count(*) from shop_order where name='"+NAME+"'"	;
	ResultSet rs = editbean.executeQuery(sql);
	rs.next(); //记录集刚打开时指针位于第一条记录之前
	recordcount=rs.getInt(1);//执行count(*)后该字段中存放记录总数


%>


<%
	String name,order_time,order_condition,postway;
	int product_id,quantity,sum;
 	//打开数据库
	sql="select * from shop_order where name='"+NAME+"'";
 	rs = editbean.executeQuery(sql);
 
 	
	out.print("<center>");
	
 	while(rs.next())
	{
%>
	
	<div class="one">  
	<form method="POST" action="orderSaveEdit.jsp "> 
  <table>
 	<tr>
	  <td><input type="text" name="sub_id" value=<%=rs.getString(1)%> style="width:0px; height:0px"></td>
	  <td><input type="text" name="name" value=<%=rs.getString(2)%> style="width:40px; height:25px"></td><td>&nbsp;&nbsp;</td>
      <td><input type="text" name="product_id" value=<%=rs.getString(3)%> style="width:200px; height:25px"></td><td>&nbsp;&nbsp;</td>
      <td><input type="number" name="quantity" value=<%=rs.getInt(4)%> style="width:50px; height:25px"></td><td>&nbsp;&nbsp;</td>
      <td><input type="number" name="sum" value=<%=rs.getInt(6)%> style="width:100px; height:25px"></td><td>&nbsp;&nbsp;</td>
	  <td><input type="text" name="order_time" value=<%=rs.getString(5)%> style="width:150px; height:25px"></td><td>&nbsp;&nbsp;</td>
      <td><select size="1" name="order_condition">
      <option selected value="已付款">已付款</option>
      <option value="已发货">已发货</option>
      <option value="已收货">已收货</option>
	  <option value="已评价">已评价</option>
      </select></td><td>&nbsp;&nbsp;</td>
	  <td><select size="1" name="postway">
      <option selected value="中通">中通</option>
      <option value="申通">申通</option>
      <option value="圆通">圆通</option>
	  <option value="邮政">邮政</option>
	  <option value="EMS">EMS</option>
	  <option value="顺丰">顺丰</option>
      </select>
	  </td>
      <td width="100%" colspan="2"><p><input type="submit" value="修改资料" name="B1">&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="重置" name="B2">
</p>
</td>
    </tr>
  </table>
  </form>
<%
	out.print("<table>");
		out.print("<tr><td> <img src=");
		out.print('\"');
		out.print("images/separator2.gif");
		out.print('\"');
		out.print("width='1040'  height='6'></td></tr>");
		out.print("</table>");  
	}

%>
    <table border=0 width="100%">
        <tr>
           <td width="88"><font size="2">共<font size="2" color="blue"><%=recordcount%></font>条记录</font></td>
         </tr>
      </table>
 </div>      
</table>
</div>
</div>
</div>
<!-- End ImageReady Slices -->
</body>
</html>