<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Cars</title>  
</head>  
<body>  
  
<%@page import="com.javatpoint.dao.CarDao,com.javatpoint.bean.*,java.util.*"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Car List</h1>  
  
<%  
List<car> list=CarDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  
<tr><th>Brand</th><th>Model</th><th>Year</th>  
<th>Capacity</th><th>Rent Price</th><th>Car Type</th>
<th>Color</th><th>License</th><th>Vehicle Number</th><th>Current Mileage</th><th>Vehicle Status</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getBrand()}</td><td>${u.getModel()}</td>  
<td>${u.getYear()}</td><td>${u.getCapacity()}</td><td>${u.getRentPrice()}</td>
<td>${u.getCarType()}</td><td>${u.getColor()}</td>
<td>${u.getLicensePlate()}</td><td>${u.getVehicleNo()}</td><td>${u.getCurrentMileage()}</td><td>${u.getVehicleStatus()}</td>
<td><a href="edit.jsp?id=${u.getVehicleId()}">Edit</a></td>  
<td><a href="delete.jsp?id=${u.getVehicleId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="addnewcar.jsp">Add New Car</a><br>
<a href="index.jsp">Home</a>  
</body>  
</html>  