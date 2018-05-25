<%@page import="com.javatpoint.dao.CarDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.car"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i = CarDao.update(u);  
response.sendRedirect("ViewCar.jsp");  
%>  