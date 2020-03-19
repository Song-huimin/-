<html>
<head>
<title>forget</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body background="../img/the.gif">
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<!-- ImageReady Slices (forget) -->
<table align="center"width="900" height="486">
	
	<tr>
		
<td>
<jsp:useBean id="bean" scope="page" class="mydb.mydb"/>


<% String question,answer,name,sql;

	//提交问题和答案
  name=new String(request.getParameter("name").getBytes("ISO8859_1"));
  question=new String(request.getParameter("question").getBytes("ISO8859_1"));
  answer=new String(request.getParameter("answer").getBytes("ISO8859_1"));
  //问题或密码不能为空
   if (question.length()==0 || answer.length()==0 || name.length()==0)
   {
%>
   <script language='javascript'> 
   alert("请填写完整")
   window.history.back()
   </script>

<%}
   else
   { sql="select * from user where question='" +question+"'and answer='"+answer+"' and name='"+name+"'";
    ResultSet rs=bean.executeQuery(sql);
     //问题错误
    if (!rs.next())
    {

%>
   <script language='javascript'> 
   alert("问题或答案不正确")
   window.history.back()
   </script>

<%
    }
	else
	//找到密码		
    {
    out.print("<center>您的密码为"+rs.getString("password"));
    rs.close();
   	
    }
  }
	%>


 <a href="../index.html">重新登录</a>
</td>	
	</tr>
</table>
<!-- End ImageReady Slices -->
</body>
</html>
</body>
</html>