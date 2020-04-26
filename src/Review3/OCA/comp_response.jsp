<%@ page import="java.sql.*"%>
<%
 try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");
  int c_id=Integer.parseInt(request.getParameter("id"));
  String status=request.getParameter("status");
  System.out.println("1----------"+status);
  String condition=request.getParameter("condition");
  if(status.equals("forward"))
	{
	    System.out.println("2---------");
		PreparedStatement pst=con.prepareStatement("update complaint set status_id=?,condition=? where comp_id=?");
		pst.setInt(1,2);
		pst.setString(2,condition);
		pst.setInt(3,c_id);
		pst.executeUpdate();
		out.println("successfully forwarded..");
		Thread.sleep(2000);
		  
		%>
		<%@ page import="java.lang.Thread" %>

		<jsp:forward page="admin_inbox.jsp"/>
		<%
	}
	if(status.equals("reject"))
	{
		PreparedStatement pst=con.prepareStatement("update complaint set status_id=? where comp_id=?");
		pst.setInt(1,3);
		pst.setInt(2,c_id);
		int i=pst.executeUpdate(); 
        if(i==0)
		System.out.println("forwarded");%>
		 <h4> successfully forwarded </h4>
		 <jsp:forward page="admin_inbox.jsp"/>
		<%
	}
}
catch(Exception e)
{
e.printStackTrace();
}
%>