<%@ page language="java"
	import="com.carlend.beans.LendCarBean,com.carlend.dao.CarDao"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Car Form</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
<%@ include file="navLender.html" %>
	<%
	out.println("<div class='container'>");
	String carNo = request.getParameter("carNo");
	String lendeeId = request.getParameter("lendeeId");
	String lendeeName = request.getParameter("lendeeName");
	String slendeeName = request.getParameter("mobileNo");
	long lendeetmobile = Long.parseLong(slendeeName);

	LendCarBean bean = new LendCarBean(carNo, lendeeId, lendeeName, lendeetmobile);
	int i = CarDao.lendCar(bean);
	if (i > 0) {
		out.println("<h3>Car lended  successfully</h3>");
	} else {
		out.println("<h3>Sorry, unable to rent car.</h3><p>We may have sortage of cars. Kindly visit later.</p>");
	}
	out.println("</div>");
	%>
	<%@ include file="footer.html"%>




</body>
</html>