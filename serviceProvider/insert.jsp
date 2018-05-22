<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String vehicle_Id = request.getParameter("vehicle_Id");
String brand = request.getParameter("brand");
String model = request.getParameter("model");
String year = request.getParameter("year");
String capacity = request.getParameter("capacity");
String rent_Price = request.getParameter("rent_Price");
String car_Type = request.getParameter("car_Type");
String vehicle_No= request.getParameter("vehicle_No");
String color = request.getParameter("color");
String license_Plate = request.getParameter("license_Plate");
String current_Mileage = request.getParameter("current_Mileage");
String vehicle_Status = request.getParameter("vehicle_Status");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into vehicle(vehicle_Id,brand,model,year,capacity,rent_Price,car_Type,vehicle_No,color,license_Plate,current_Mileage,vehicle_status)values('"+vehicle_Id+"','"+brand+"','"+model+"','"+year+"','"+capacity+"','"+rent_Price+"','"+car_Type+"','"+vehicle_No+"','"+color+"','"+license_Plate+"','"+current_Mileage+"','"+vehicle_Status+"')");


out.println("New Car Added!!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>