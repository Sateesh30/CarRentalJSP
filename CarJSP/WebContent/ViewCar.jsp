<%@ page language="java" import="com.carlend.beans.CarBean,java.util.*,com.carlend.dao.CarDao" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Car</title>
<link rel='stylesheet' href='bootstrap.min.css'/>
</head>
<body>
<%@ include file="navLender.html" %>
<% 
out.println("<div class='container'>");

List<CarBean> list=CarDao.view();

out.println("<table class='table table-bordered table-striped'>");
out.println("<tr><th>CarNo</th><th>CarName</th><th>Model</th><th>Quantity</th><th>RentedCars</th><th>Delete</th></tr>");
for(CarBean bean:list){
	out.println("<tr><td>"+bean.getCarNo()+"</td><td>"+bean.getCarName()+"</td><td>"+bean.getModel()+"</td><td>"+bean.getNoOfCars()+"</td><td>"+bean.getLentCars()+"</td><td><a href='DeleteCar.jsp?carNo="+bean.getCarNo()+"'>Delete</a></td></tr>");
}
out.println("</table>");

out.println("</div>");
%>
<%@ include file="footer.html"
%>

</body>
</html>