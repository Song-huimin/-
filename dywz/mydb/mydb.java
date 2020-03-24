package mydb; 
import java.sql.*; 
public class mydb{ 
String sql; 
Connection con; 
Statement smt; 
ResultSet rs;
public mydb() { 
try{ 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
}catch (ClassNotFoundException e) 
{ System.err.println ("驱动程序不存在"); 
}  } 
public ResultSet executeQuery(String sql) { 
rs = null; 
try { 
con = DriverManager.getConnection("jdbc:odbc:mydb"); //系统dsn
smt = con.createStatement();      
rs = smt.executeQuery(sql); 
} 
catch(SQLException ex) { 
System.err.println("aq.executeQuery: " + ex.getMessage()); 
} 
return rs; 
} 
public void executeUpdate(String sql) { 
try { 
con = DriverManager.getConnection("jdbc:odbc:mydb"); //系统dsn
smt = con.createStatement();      
smt.executeUpdate(sql); 
} 
catch(SQLException ex) { 
System.err.println("aq.executeQuery: " + ex.getMessage()); 
} 
} 
} 

