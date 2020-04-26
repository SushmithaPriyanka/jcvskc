<%@ page import="java.sql.*"%>
<%
	int id=Integer.parseInt(request.getParameter("news_id"));
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
	PreparedStatement pst=con.prepareStatement("select news from news where news_id=?");
	pst.setInt(1,id);
	ResultSet rs=pst.executeQuery();
	rs.next();
	out.println("<hr>");
	%>
	<%=rs.getString(1)%>
	<%
	out.println("</hr>");
	%>