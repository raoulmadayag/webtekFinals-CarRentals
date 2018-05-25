<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="com.javatpoint.dao.CarDao,com.javatpoint.bean.car"%>  
  
<%  
String vehicleid=request.getParameter("vehicle_Id");  
car u=CarDao.getRecordById(Integer.parseInt(vehicleid));
%>  
  
<h1>Edit Form</h1>  
<form action="editcar.jsp" method="post">  
<input type="hidden" name="vehicle_Id" value="<%=u.getVehicleId()%>"/>  
<table>  
<tr><td>Vehicle Status:</td><td>  
<td>  
<input type="radio" name="vehicle_status" value="<%=u.getVehicleStatus()%>"/>
<tr><td>Current Mileage:</td><td>  
<input type="text" name="current_Mileage" value="<%=u.getCurrentMileage()%>"/></td></tr>  
<tr><td>License Plate:</td><td>  
<input type="text" name="license_Plate" value="<%=u.getLicensePlate()%>"/></td></tr>     
<tr><td colspan="2"><input type="submit" value="Edit Car"/></td></tr>  
</table>  
</form>  
  
</body>  
</html>  