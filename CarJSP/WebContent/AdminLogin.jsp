<%@ page trimDirectiveWhitespaces="true" language="java"
	import="javax.servlet.http.HttpSession,java.io.PrintWriter"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Section</title>
<link rel='stylesheet' href='bootstrap.min.css'>
</head>
<body>
	<%


String email=request.getParameter("email");
String password=request.getParameter("password");
%>
	<% 
   if(email.equals("admin@admin.com")&&password.equals("admin123")){
	HttpSession session1=request.getSession();
	session1.setAttribute("admin","true");
%>

	<%@ include file="navadmin.html"%>

	<%@ include file="admincarousel.html"%>
	<% 	
}else{
	%>

	<%@ include file="navhome.html"%>


	<div class='container'>
		<h3>Username or password error</h3>
		<%@
	include file="adminloginform.html"%>
	</div>
	<% }
%>
	<%@ include file="footer.html"%>



</body>
</html>