<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<html>
<title>admin inbox </title>
<body background="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\OCA\child1\8.jpg">
<center>
<%
 try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
  System.out.println("connection created");
  PreparedStatement pst=con.prepareStatement("select c.comp_id,c.description,c.area,s.status from complaint c,status s where c.status_id=s.status_id");
  ResultSet rs=pst.executeQuery();
   
 %>
 <h2><font color="green">ADMIN INBOX</FONT></H2>
<table bgcolor="orange" border=2 colspan=3>
<tr>
		<td><b><font color="green">comp_id</font></b></td>
		<td><b><font color="green">comp_desc</font></b></td>
		<td><b><font color="green">area</font></b></td>
		<td><b><font color="green">status</font></b></td>

</tr>
<%
	
	 while(rs.next())
	{
	 %>
	 <tr><td><%=rs.getInt(1)%></td>
	 <td><%=rs.getString(2)%></td>
	 <td><%=rs.getString(3)%></td>
	 <td><%=rs.getString(4)%></td></tr>
	 <%
	}
}catch(Exception e)
{
	System.out.println(e);
}
	 %>

</table>
	<form action="comp_response.jsp">
	 complaint id:<input type="text" name="id"><br>
	 <input type="radio" name="condition" value="severe">severe<br>
	<input type="radio" name="condition" value="normal">normal<br>
	 <input type="submit" name="status" value="forward">
	 <input type="submit" name="status" value="reject">
	</form>
</center>
</body>
</html>