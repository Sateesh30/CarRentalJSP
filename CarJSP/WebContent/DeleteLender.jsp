<%@ page language="java"  import="com.carlend.dao.LenderDao" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		LenderDao.delete(id);
		response.sendRedirect("ViewLender.jsp");
%>
</body>
</html>