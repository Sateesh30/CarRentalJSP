<%@ page language="java" import="com.carlend.beans.LenderBean,com.carlend.dao.LenderDao" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String sid=request.getParameter("id");
int id=Integer.parseInt(sid);
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String smobile=request.getParameter("mobile");
long mobile=Long.parseLong(smobile);
LenderBean bean=new LenderBean(id,name, email, password, mobile);
LenderDao.update(bean);
response.sendRedirect("ViewLender.jsp");

%>
</body>
</html>