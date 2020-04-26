<%@ page import="java.sql.*"%>
<html>
<title>admin inbox </title>
<body background="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\OCA\child1\8.jpg">
<center>
<table bgcolor="orange" border=2 colspan=4>
<tr>
		<td><b><font color="green">p_id</font></b></td>
		<td><b><font color="green">Name</font></b></td>
		<td><b><font color="green">area</font></b></td>
		<td><b><font color="green">status</font></b></td>
<tr>

<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
PreparedStatement pst=con.prepareStatement("select * from reg where user_type=? and approval=?");
pst.setString(1,"police");
pst.setInt(2,0);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
%>
<tr><td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><a href="approve.jsp?emp_id=<%=rs.getInt(1)%>">approve</a></td><tr>
<%}
%>


</table>
</center>
</body>
