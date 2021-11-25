<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Return Car Form</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
	<%@ include file="navLender.html"%>
	<% 
out.println("<div class='container'>");
%>
	<%@include file="returnCarform.html"%>
	<% 
out.println("</div>");
%>
	<%@ include file="footer.html"%>
</body>
</html>