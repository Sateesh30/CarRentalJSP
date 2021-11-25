<%@ page language="java"
	import="java.util.*,com.carlend.beans.LenderBean,com.carlend.dao.LenderDao"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Renter</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
	<%@ include file="navadmin.html"%>
	<%
	out.println("<div class='container'>");

	List<LenderBean> list = LenderDao.view();

	out.println("<table class='table table-bordered table-striped'>");
	out.println(
			"<tr><th>Id</th><th>Name</th><th>Email</th><th>Password</th><th>Mobile</th><th>Edit</th><th>Delete</th></tr>");
	for (LenderBean bean : list) {
		out.println("<tr><td>" + bean.getId() + "</td><td>" + bean.getName() + "</td><td>" + bean.getEmail() + "</td><td>"
		+ bean.getPassword() + "</td><td>" + bean.getMobile() + "</td><td><a href='EditLenderForm.jsp?id="
		+ bean.getId() + "'>Edit</a></td><td><a href='DeleteLender.jsp?id=" + bean.getId()
		+ "'>Delete</a></td></tr>");
	}
	out.println("</table>");

	out.println("</div>");
	%>
	<%@ include file="footer.html"%>


</body>
</html>