<%@ page language="java"
	import="com.carlend.beans.LenderBean,com.carlend.dao.LenderDao"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Renter</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>


	<%@
 include file="navadmin.html"%>
	<%
out.println("<div class='container'>");

String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String smobile=request.getParameter("mobile");
long mobile=Long.parseLong(smobile);
LenderBean bean=new LenderBean(name, email, password, mobile);
LenderDao.save(bean);
out.print("<h4>renter added successfully</h4>");
%>
	<%@ include file="addLenderform.html"%>

	<% 
out.println("</div>");%>
	<%@ 
 include file="footer.html"%>
</body>
</html>