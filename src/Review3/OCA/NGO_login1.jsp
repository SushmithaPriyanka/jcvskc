<%@ page import="java.sql.*"%>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
String name=request.getParameter("username");
String pass=request.getParameter("password");
session.setAttribute("name",name);
PreparedStatement pst=con.prepareStatement("select count(*) from reg where username=? and password=? and approval=1");
pst.setString(1,name);
pst.setString(2,pass);
ResultSet rs=pst.executeQuery();
rs.next();
if(rs.getInt(1)==1)
{
	%>
	<jsp:forward page="middle2.jsp"/>
	<%
}
else
	%>
	<jsp:forward page="NGO_login.jsp"/>
	<%
}
catch(Exception e)
{
	e.printStackTrace();
}
%>