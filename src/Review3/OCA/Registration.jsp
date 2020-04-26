<html>
<head>
	   <script type="text/JavaScript">
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
		 if(Form1.password.value!=Form1.password2.value)
			    {
				  alert("Passwords mismatch");
				  document.Form1.password.value="";
				  document.Form1.password2.value="";
				  document.Form1.password.focus();
				  return false;
				}
		 if(Form1.area.value=="")
				{
			      alert("please enter the area name..");
				  document.Form1.area.focus();
				  return false;
				}
		 if(Form1.officer_id.value=="")
				{
			      alert("Enter Officer ID..");
				  document.Form1.officer_id.value="";
				  document.Form1.officer_id.focus();
				  return false;
				}
				    else
					 {
					  var od=Form1.officer_id.value;
					  var pattern=/^([0-9]{1,6})$/;

					  if(!(pattern.test(od)))
						 {
						  alert("enter integers only");
						  document.Form1.officer_id.value="";
						  document.Form1.officer_id.focus();
						  return false;
						 }
					 } 

			
				
			  return true;
	   }
	   </script>
	   </head> 
<body bgcolor="sky blue">
<form name="Form1" action="success.jsp" onSubmit="return validate(this)">
<center><h3>Registration</h3>
<table>
<tr>
	<td>user type</td><td><select name="user"> <option value="ngo">NGO</option>
								   <option value="police">POLICE</option>
						  </select>	</td>
</tr>
<tr>
	<td>officer_id</td><td><input type="text" name="officer_id" ></td>
</tr>
<tr>
	<td>username:</td><td> <input type="text" name="username" ></td>
</tr>
<tr>
	<td>password:</td><td> <input type="password" name="password" ></td>
</tr>
<tr>
	<td>confirm password:</td><td> <input type="password" name="password2" ></td>
</tr>
<tr>
	<td>area</td><td><input type="text" name="area"></td>
</tr>        
</table>
<input type="submit" name="submit" value="submit">
</center>
</body>
</html>