<%@ page language="java"
	import="com.carlend.beans.LenderBean,com.carlend.dao.LenderDao"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
	<%@include file="navadmin.html"%>
	<%
	out.println("<div class='container'>");
	String sid = request.getParameter("id");
	int id = Integer.parseInt(sid);

	LenderBean bean = LenderDao.viewById(id);
	
	out.print("<form action='EditLender.jsp' method='post' style='width:300px'>");
	out.print("<div class='form-group'>");
	out.print("<input type='hidden' name='id' value='"+bean.getId()+"'/>");
	out.print("<label for='name1'>Name</label>");
	out.print("<input type='text' class='form-control' value='"+bean.getName()+"' name='name' id='name1' placeholder='Name'/>");
	out.print("</div>");
	out.print("<div class='form-group'>");
	out.print("<label for='email1'>Email address</label>");
	out.print("<input type='email' class='form-control' value='"+bean.getEmail()+"'  name='email' id='email1' placeholder='Email'/>");
	out.print("</div>");
	out.print("<div class='form-group'>");
	out.print("<label for='password1'>Password</label>");
	out.print("<input type='password' class='form-control' value='"+bean.getPassword()+"'  name='password' id='password1' placeholder='Password'/>");
	out.print("</div>  ");
	out.print("<div class='form-group'>");
	out.print("<label for='mobile1'>Mobile Number</label>");
	out.print("<input type='number' class='form-control' value='"+bean.getMobile()+"'  name='mobile' id='mobile1' placeholder='Mobile'/>");
	out.print("</div>");
	out.print("<button type='submit' class='btn btn-primary'>Update</button>");
	out.print("</form>");
	
	out.println("</div>");
	%>

	<%@ include file="footer.html"%>

</body>
</html>