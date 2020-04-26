<%@ page import="java.sql.*"%>
<h2><marquee behavior="blink" dir="ltr" truespeed="truespeed"><font color="red"><B>ONLINE CHILD ABUSE</B></font></marquee></h2>
<body background="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\OCA\child1\8.jpg">
Welcome to admin..........
<table align="right" ><tr>
<td>
<a href="middle.jsp" target="middle">Logout</a>
</td>
</tr>
</table>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
%>
</body>
</html>