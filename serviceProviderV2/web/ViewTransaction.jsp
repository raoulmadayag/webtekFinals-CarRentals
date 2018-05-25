<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Transactions</title>  
</head>  
<body>  
  
<%@page import="com.javatpoint.dao.CarDao,com.javatpoint.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Transaction List</h1>  
<%  
List<car> list=CarDao.getAllTransRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  
<tr><th>Client First Name</th><th>Client Last Name</th><th>Request ID</th><th>Amount</th>  
<th>Mode of Payment</th><th>Status</th>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getFirstName()}</td><td>${u.getLastName()}</td><td>${u.getRequestId()}</td>  
    <td>${u.getAmount()}</td><td>${u.getModeOfPayment()}</td><td>${u.getStatus()}</td></tr>
</c:forEach>  
</table>  
<br/><a href="index.jsp">Back</a>  
</body>  
</html>  
