<%@ page import="java.sql.*"%>
<html>
<body background="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\OCA\child1\8.jpg">
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
PreparedStatement pst=con.prepareStatement("select * from news where approval=0");
ResultSet rs=pst.executeQuery();
%>
<table align="center" border="1">
<tr><th>news_id</th>
<th>Emp_id</th>
<th>News</th>
<th>Date</th>
<th>Approval</th></tr>
<%
while(rs.next())
{
%>
<tr><td><%=rs.getInt(1)%></td>
<td><%=rs.getInt(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><a href="news_approve.jsp?news_id=<%=rs.getInt(1)%>">Approval</a></td></tr>
<%
}
%>
</table>
</body>
</html>