<%

String s1=request.getParameter("uname");
String s2=request.getParameter("pwd");
if(s1.equals("admin")&&s2.equals("admin"))
	{
%>
 <jsp:forward page="Admin_main.jsp">
 <jsp:param name="m1" value="<%=s1%>"/>
 <jsp:param name="m2" value="<%=s2%>"/>
 </jsp:forward>

<%}
else{
	out.println("please verify the login credential");
}
%>

