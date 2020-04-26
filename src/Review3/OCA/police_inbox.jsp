<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<html>
<title>admin inbox </title>
<body>
<center>
<%
 try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
  System.out.println("connection created");
  PreparedStatement pst=con.prepareStatement("select c.comp_id,c.description,c.area,s.status,c.condition from complaint c,status s where c.status_id=s.status_id and c.status_id=2");
  ResultSet rs=pst.executeQuery();
   
 %>
<table bgcolor="orange" border=2 colspan=3>
<tr>
		<td><b><font color="green">comp_id</font></b></td>
		<td><b><font color="green">comp_desc</font></b></td>
		<td><b><font color="green">area</font></b></td>
		<td><b><font color="green">status</font></b></td>
		<td><b><font color="green">condition</font></b></td>

</tr>
<%
	
	 while(rs.next())
	{
	 %>
	 <tr><td><%=rs.getInt(1)%></td>
	 <td><%=rs.getString(2)%></td>
	 <td><%=rs.getString(3)%></td>
	 <td><%=rs.getString(4)%></td>
	 <td><%=rs.getString(5)%></td></tr>
	 
	 <%
	}
}catch(Exception e)
{
	System.out.println(e);
}
	 %>

</table>
	<form action="police_response.jsp">
	 complaint id:<input type="text" name="id"><br>
	 <input type="submit" name="status" value="completed">
	 <table align="right">
<a href="middle.jsp" target="middle" ><h3><font color="red"><b>Logout<b></font></h3></a>
</table>
	</form>
</center>
</body>
</html>