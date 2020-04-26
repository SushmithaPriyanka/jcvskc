<%@ page import="java.sql.*"%>
<%
 try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
  int c_id=Integer.parseInt(request.getParameter("id"));
  String status=request.getParameter("status");
	if(status.equals("completed"))
	{
		PreparedStatement pst=con.prepareStatement("update complaint set status_id=? where comp_id=?");
		pst.setInt(1,4);
		pst.setInt(2,c_id);
		pst.executeUpdate();
		%>
		<jsp:forward page="police_inbox.jsp"/>
		<%
	}
}
catch(Exception e)
{
}
%>