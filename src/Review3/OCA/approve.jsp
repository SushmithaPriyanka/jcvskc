<%@ page import="java.sql.*"%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
int emp_id=Integer.parseInt(request.getParameter("emp_id"));
PreparedStatement pst=con.prepareStatement("update reg set approval=? where emp_id=?");
pst.setInt(1,1);
pst.setInt(2,emp_id);
pst.executeUpdate();
out.print("<center><h3>successfully approved</h3></center>");
%>