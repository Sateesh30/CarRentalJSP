<%@ page language="java"
	import="java.util.*,com.carlend.beans.LendCarBean,com.carlend.dao.CarDao"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Lent Car</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
	<%@ include file="navLender.html"%>
	<%
	out.println("<div class='container'>");

	List<LendCarBean> list = CarDao.viewlentcars();

	out.println("<table class='table table-bordered table-striped'>");
	out.println(
			"<tr><th>Callno</th><th>Customer Id</th><th>Customer Name</th><th>Customer Mobile</th><th>Rented Date</th><th>Return Status</th></tr>");
	for (LendCarBean bean : list) {
		out.println("<tr><td>" + bean.getCarNo() + "</td><td>" + bean.getLendeeId() + "</td><td>" + bean.getLendeeName()
		+ "</td><td>" + bean.getMobileNo() + "</td><td>" + bean.getLendDate() + "</td><td>" + bean.getReturnStatus()
		+ "</td></tr>");
	}
	out.println("</table>");

	out.println("</div>");
	%>
	<%@ include file="footer.html"%>

</body>
</html>