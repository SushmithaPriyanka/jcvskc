<Body BACKGROUND="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\OCA\child1\asad.jpg" >
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<% 
  try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","child","child");


   
   out.println("<center>");
   
   CallableStatement cs1;
   cs1 = con.prepareCall("{ ?=call GET_cmp_id }");
   cs1.registerOutParameter(1,Types.INTEGER);
   cs1.execute();
   
   
   PreparedStatement st=con.prepareStatement("insert into complaint (comp_id,description,area,status_id) values(?,?,?,?)"); 
   int i1;
   String s2,s3;
   
	i1=cs1.getInt(1);
	s2=request.getParameter("DETAILS");
	s3=request.getParameter("area");	          
    st.setInt(1,i1);
    st.setString(2,s2);
    st.setString(3,s3);
	st.setInt(4,1);
	System.out.print("connection is created");
     

       /* out.println("<br> Reqest_Id:"+i1);
	out.println("<br> Req_details:"+s2);
	out.println("<br> Facility:"+s3);  
        out.println("<br> Login_id:"+s4);
        out.println("<br> Date_of_req:"+d);
	out.println("<br> Status:"+s6);  */

    int n1 = st.executeUpdate();
    if(n1==1)
    out.println("complaint is posted successfully"); 
    con.close();
    }
    catch(Exception e){ 
			System.out.println(e);
          out.println("<br>Invalid Data");}
	
%>
<br><br><A HREF="main.jsp"><img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\OCA\child1\images (12).jpg" height="30" width="30"></A>
<A HREF="post_complaint.jsp"><img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\OCA\child1\images (10).jpg" height=30 width=30></A>
</center>
</Body>