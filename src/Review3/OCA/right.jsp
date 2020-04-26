<link rel="stylesheet" href="style.css" media="screen" />
<%@ page import="java.sql.*"%>
<body background="child1/13.jpg">
	<font color="red"size="20"><b>News Letters<b></font>
	<hr>
	<%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
	PreparedStatement pst=con.prepareStatement("select news_id,title from news where approval=1");
	ResultSet rs=pst.executeQuery();
	%>
	<marquee direction='up' onMouseover='this.stop()' onMouseout='this.start()'>
	<%
	while(rs.next())
	{
	%>
	<center>
		
		<a href="show_news.jsp?news_id=<%=rs.getInt(1)%>" target="main"><%=rs.getString(2)%></a>
	</center>
	<%
	}
	%>
	</marquee>
</body>

