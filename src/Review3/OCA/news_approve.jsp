<%@ page import="java.sql.*"%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
int news_id=Integer.parseInt(request.getParameter("news_id"));
PreparedStatement pst=con.prepareStatement("update news set approval=? where news_id=?");
pst.setInt(1,1);
pst.setInt(2,news_id);
pst.executeUpdate();
%>
<jsp:forward page="admin_newsletter_arrival.jsp"/>