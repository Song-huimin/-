<html>
<head>
<title>查看图书信息</title>
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
		<!-- ImageReady Slices (regconfirm) -->
		<table>
			<jsp:useBean id="bookbean" scope="page" class="mydb.mydb"/>
			<form action="orderlist1.jsp" method="post">
			<tr>
			<td colspan="4">
			<input type="text" name="NAME">
			<input type="submit" value="查找">*请输入用户名</td>
			</tr>
			</form>
			<tr>
			<td>用户名&nbsp;&nbsp;&nbsp;书名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数量&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;订单日期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;订单状态&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;快递方式</td>
			</tr>
<%
	
	int prep,nextp,pageno,pagecount,pagesize,recordcount,i,j,k;

 	pagesize=10; //每页记录数
 
	 //计算记录总数 
	String sql="select count(*) from shop_order"	;
	ResultSet rs = bookbean.executeQuery(sql);
	rs.next(); //记录集刚打开时指针位于第一条记录之前
	recordcount=rs.getInt(1);//执行count(*)后该字段中存放记录总数
	rs.close();	
	//计算总页数
	pagecount=(recordcount+pagesize-1)/pagesize;

	//对提交页的处理
	if(request.getParameter("pageno")==null)  //没有输入页码时，页码为1
   	 pageno=1;
	else
	pageno=Integer.parseInt(request.getParameter("pageno"));//字符串转化为整形

	if( pageno> pagecount)
	 pageno = pagecount;
 
	if (pageno<1)
	pageno =1;

	//对前后页的判断
  	if(pageno==1)

 	prep = 1;

	else

  	prep = pageno -1;

 	if(pageno == pagecount)

  	nextp = pagecount;

 	else

  	nextp = pageno +1;
  	//显示分页
%>


<%
	String name,order_time,order_condition,postway;
	int product_id,quantity,sum;
 	//打开数据库
	sql="select * from shop_order order by name desc";
 	rs = bookbean.executeQuery(sql);
 
 	//要显示页的首纪录
 	i=(pageno-1)*pagesize; 
 	//移动指针到首纪录 
	for (j=0;j<i;j++)
 	rs.next();
 
	//显示纪录，每页显示5条 
 	k=0; 
	out.print("<center>");
	
 	while(k<pagesize && rs.next())
	{
  		int sub_id=rs.getInt(1);
		name = rs.getString(2);
		product_id = rs.getInt(3);
		quantity = rs.getInt(4);
		sum = rs.getInt(6);
		order_time = rs.getString(5);
		order_condition = rs.getString(7);
		postway = rs.getString(8);
%>
		
<%
  		out.print("<table>"); 
  		out.print("<tr><td width='80' height='20'>"+name+"</td><td width='200' height='20'>"+product_id+"</td><td width='120'  height='20'>"+quantity+"</td><td width='140'  height='20'>"+sum+"</td><td width='200'  height='20'>"+order_time+"</td><td width='120'  height='20'>"+order_condition+"</td><td width='120'  height='20'>"+postway+"</td></tr>");
		out.print("</table>");

		out.print("<table>");
		out.print("<tr><td> <img src=");
		out.print('\"');
		out.print("images/separator2.gif");
		out.print('\"');
		out.print("width='1040'  height='6'></td></tr>");
		out.print("</table>");  
		k++;
	}
 	out.print("</table><p>");

%>
<form action=orderlist.jsp method=post>
    <table border=0 width="100%">
        <tr>
           <td width="92"><font size="2">目前页次:<font size="2" color="blue"><%=pageno%></font> /<font size="2" color="blue"><%=pagecount%></font></font></td>
           <td width="88"><font size="2">共<font size="2" color="blue"><%=recordcount%></font>条记录</font></td>
           <td width="68"><font size="2">　</font><a href=orderlist.jsp?pageno=<%=prep%>><font size="2">[上一页]</font></a></td>
           <td width="55"><a href=orderlist.jsp?pageno=<%=nextp%>><font size="2">[下一页]</font></a></td>
           <td width="55"><a href=orderlist.jsp?pageno=1><font size="2">[第一页]</font></a></td>
           <td width="68"><a href=orderlist.jsp?pageno=<%=pagecount%>><font size="2">[最后一页]</font></a></td>
           <td width="105"><font size="2">输入页号:</font>
                <input size=3 name=pageno type=text></td>
            <td width="41"><input type=submit name=SEND2 value=查找></td>
         </tr>
      </table>
</form>  
</table>        
		</div>
	</div>
</div>
<!-- End ImageReady Slices -->
</body>
</html>