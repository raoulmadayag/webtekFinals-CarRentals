<%@page import="com.javatpoint.dao.CarDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.car"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=CarDao.save(u);  
if(i>0){  
response.sendRedirect("success.jsp");  
}else{  
response.sendRedirect("fail.jsp");  
}  
%>  
