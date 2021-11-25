<%@ page language="java"
	import="com.carlend.beans.CarBean,com.carlend.dao.CarDao"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Car Form</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
<%@ include file="navLender.html"%>
	<% 
out.println("<div class='container'>");
String carNo=request.getParameter("carNo");
String name=request.getParameter("name");
String model=request.getParameter("model");

String snoOfCars=request.getParameter("noOfCars");
int noOfCars=Integer.parseInt(snoOfCars);
CarBean bean=new CarBean(carNo,name,model,noOfCars);
int i=CarDao.save(bean);
if(i>0){
	out.println("<h3>Car Model saved successfully</h3>");
}
%>
	<%@ include file="AddCarForm.html"%>
	<% 
out.println("</div>");

%>
	<%@ include file="footer.html"%>
</body>
</html>