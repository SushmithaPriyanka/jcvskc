<%@ page import="java.sql.*"%>
<%
String name=(String)session.getAttribute("name");
String news=request.getParameter("news");
String title=request.getParameter("title");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
PreparedStatement pst=con.prepareStatement("select emp_id from reg where username=?");
pst.setString(1,name);
ResultSet rs=pst.executeQuery();
rs.next();
int eid=rs.getInt(1);
PreparedStatement pst1=con.prepareStatement("select count(*) from news");
ResultSet rs1=pst1.executeQuery();
rs1.next();
int nid=rs1.getInt(1);
PreparedStatement pst2=con.prepareStatement("select to_char(sysdate) from dual");
ResultSet rs2=pst2.executeQuery();
rs2.next();
String date=rs2.getString(1);
PreparedStatement pst3=con.prepareStatement("insert into news values(?,?,?,?,?,?)");
pst3.setInt(1,nid+1);
pst3.setInt(2,eid);
pst3.setString(3,news);
pst3.setString(4,date);
pst3.setInt(5,0);
pst3.setString(6,title);
pst3.executeUpdate();
%>
<center><h3>news posted successfully</h3></center>