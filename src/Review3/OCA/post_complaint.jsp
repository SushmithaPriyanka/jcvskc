<link rel="stylesheet" href="style.css" media="screen" />
 <html>
<head>
	   <script type="text/JavaScript">
	   function validate()
	   {
		   if(F2.DETAILS.value=="")
				{
			      alert("Please enter Complaint description..");
				  document.F2.DETAILS.value="";
				  document.F2.DETAILS.focus();
				  return false;
				}
				 
				return true;
	   }
	   </script>
	   </head> 

<body bgcolor="#cococo">
	<center>
	<font color="red"size="20"><b>POST COMPLAINT</b><br><br>
	<FORM NAME="F2" METHOD="POST" ACTION="post_complaint1.jsp" onSubmit="return validate(this)">
	<table>
		<tr>
			<td><font color="red"size="5">Complaint:</FONT></td><td><TEXTAREA NAME = "DETAILS" ROWS=2 COLUMNS=25></TEXTAREA></td>
		</tr>
		<tr>
			<td><font color="red"size="5">Area:</FONT></td><td><input type="text" name="area"/></td>
		</tr>
		<tr></tr><tr></tr>
		<tr>
			<td></td><td>
			
			
			<input type="submit" class="sub"value="submit"/></td>
		</tr>
	</table>
	</form>
	</center>
</body>
<%

%>
