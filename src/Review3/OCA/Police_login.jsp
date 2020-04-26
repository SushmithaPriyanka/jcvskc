<link rel="stylesheet" href="style1.css" media="screen" />
	   <html>
	   <head>
	   <script language="javascript">
	   function validate()
	   {
		   
		   if((Form1.username.value=="")||(Form1.password.value==""))
		   {
					
				alert("Please enter the values");
				document.Form1.username.focus();
				return false;
		   }
		  if(Form1.username.value.length<6)
				{
			      alert("Your username should contain atleast 6 characters");
				  document.Form1.username.value="";
				  document.Form1.password.value="";
				  document.Form1.username.focus();
				  return false;
				}
		 if(Form1.password.value.length<6)
				{
				  alert("Your password should contain atleast 6 characters");
				  document.Form1.username.value="";
				  document.Form1.password.value="";
				  document.Form1.password.focus();
				  return false;
				}
				
			  return true;
	   }
	   </script>
	   </head>

	   <body background="child1/4.jpg"><center><font color="cyan"><h3>POLICE
	   LOGIN PAGE</h3></font>
	          <form name="Form1" action="Police_main.jsp" onSubmit="return validate()">
			  <table>
			   <tr><td>username: <input type="text" name=username></tr></td>
			  <tr><td>password:<input type="password" name=password ></tr></td>
<tr><td>
<input type="submit" name="submit" value="Submit">
<a href="Registration.jsp" target="middle">signup
</td></tr>
</center>
</table>
</form>
</body>
</html>