<%@ page language="java" import="com.carlend.dao.CarDao" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

    CarDao.delete(request.getParameter("carNo"));
	response.sendRedirect("ViewCar.jsp");

%>
</body>
</html>