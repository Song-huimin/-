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

	//�ύ����ʹ�
  name=new String(request.getParameter("name").getBytes("ISO8859_1"));
  question=new String(request.getParameter("question").getBytes("ISO8859_1"));
  answer=new String(request.getParameter("answer").getBytes("ISO8859_1"));
  //��������벻��Ϊ��
   if (question.length()==0 || answer.length()==0 || name.length()==0)
   {
%>
   <script language='javascript'> 
   alert("����д����")
   window.history.back()
   </script>

<%}
   else
   { sql="select * from user where question='" +question+"'and answer='"+answer+"' and name='"+name+"'";
    ResultSet rs=bean.executeQuery(sql);
     //�������
    if (!rs.next())
    {

%>
   <script language='javascript'> 
   alert("�����𰸲���ȷ")
   window.history.back()
   </script>

<%
    }
	else
	//�ҵ�����		
    {
    out.print("<center>��������Ϊ"+rs.getString("password"));
    rs.close();
   	
    }
  }
	%>


 <a href="../index.html">���µ�¼</a>
</td>	
	</tr>
</table>
<!-- End ImageReady Slices -->
</body>
</html>
</body>
</html>