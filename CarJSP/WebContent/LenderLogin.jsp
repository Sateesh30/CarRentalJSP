<%@ page language="java"
	import="com.carlend.dao.LenderDao,javax.servlet.http.HttpSession"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Renter Section</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
	<%

String email=request.getParameter("email");
String password=request.getParameter("password");
if(LenderDao.authenticate(email, password)){
	HttpSession session1=request.getSession();
	session1.setAttribute("email",email);
%>

	<%@ include file="navLender.html"%>
	<%@include file="Lendercarousel.html"%>
	<%
}else{
	 %>
	<%@include file="navhome.html"%>
	<% 
	out.println("<div class='container'>");
	out.println("<h3>Username or password error</h3>");
	%>
	<%@ include file="Lenderloginform.html"%>
	<% 
	out.println("</div>");
}
%>
	<%@ include file="footer.html"%>
</body>
</html>