<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="com.javatpoint.dao.CarDao,com.javatpoint.bean.car"%>  
  
<%  
String id=request.getParameter("vehicle_Id");  
car u=CarDao.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="editcar.jsp" method="post">  
<input type="hidden" name="vehicleid" value="<%=u.getVehicleId()%>"/>  
<table>  
<tr><td>Vehicle Status:</td><td>  
<td>  
<input type="radio" name="vehiclestatus" value="Available"/>Available  
<input type="radio" name="vehiclestatus" value="Deactivated"/>Deactivated
<input type="radio" name="vehiclestatus" value="Not Available"/>Not Available</td></tr>    
<tr><td>Current Mileage:</td><td>  
<input type="text" name="currentmileage" value="<%=u.getCurrentMileage()%>"/></td></tr>  
<tr><td>License Plate:</td><td>  
<input type="text" name="licenseplate" value="<%=u.getLicensePlate()%>"/></td></tr>     
<tr><td colspan="2"><input type="submit" value="Edit Car"/></td></tr>  
</table>  
</form>  
  
</body>  
</html>  