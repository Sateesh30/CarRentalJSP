<%@ page language="java" import="com.carlend.dao.CarDao"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Return Car</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
	<%@ include file="navLender.html"%>
	<% 

out.println("<div class='container'>");
String carNo=request.getParameter("carNo");
String slendeeId=request.getParameter("lendeeid");
int lendeeId=Integer.parseInt(slendeeId);

int i=CarDao.returnCar(carNo,lendeeId);
if(i>0){
	out.println("<h3>Car returned successfully</h3>");
}else{
	out.println("<h3>Sorry, unable to return Car.</h3><p>We may have sortage of Cars. Kindly visit later.</p>");
}
out.println("</div>");
%>
	<%@
 include file="footer.html"%>
</body>
</html>