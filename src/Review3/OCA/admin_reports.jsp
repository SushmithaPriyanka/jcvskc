<%@ page import="java.sql.*"%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
PreparedStatement pst=con.prepareStatement("select count(*) from reg where user_type='ngo'");
ResultSet rs=pst.executeQuery();
rs.next();
int i=rs.getInt(1);

PreparedStatement pst1=con.prepareStatement("select count(*) from reg where user_type='police'");
ResultSet rs1=pst1.executeQuery();
rs1.next();
int j=rs1.getInt(1);

PreparedStatement pst2=con.prepareStatement("select count(*) from complaint");
ResultSet rs2=pst2.executeQuery();
rs2.next();
int k=rs2.getInt(1);
%>
<body background="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\OCA\child1\8.jpg">
<table width="30%" align="center" border=3>
		<tr bgcolor="green">
			<td>no of ngo's</td>
			<td>no of polices</td>
		</tr>
		<tr>
			<td><%=i%></td>
			<td><%=j%></td>
		</tr>
</table>

<br><br><br><br><br><br>
<table width="22%" align="center" border=3>
		<tr bgcolor="yellow">
			<td>no of complaints</td>
		</tr>
		<tr>
			<td><%=k%></td>
		</tr>
</table>
</body>