<%@ page import="java.sql.*"%>
<html><body>
<%
String user=request.getParameter("user");
int id=Integer.parseInt(request.getParameter("officer_id"));
String uname=request.getParameter("username");
String pwd=request.getParameter("password");
String pwd2=request.getParameter("password2");
String area=request.getParameter("area");
%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
PreparedStatement pst=con.prepareStatement("insert into reg values(?,?,?,?,?,?)");
pst.setInt(1,id);
pst.setString(2,uname);
pst.setString(3,pwd);
pst.setString(4,user);
pst.setString(5,area);
pst.setInt(6,0);
pst.executeUpdate();
%>
<form action="middle.jsp">

<center>
<table border=2>
<tr>
<td>you are registered Successfully</td>
</tr>
<tr>
<td>
<input type="submit" value="ok" >

</td>
</tr></center>
</table><body>
<html>
