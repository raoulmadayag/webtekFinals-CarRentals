<%-- 
    Document   : insert
    Created on : May 10, 2018
    Author     : Joshua Abubo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert JSP Page</title>
    </head>
    <body>
       <%

        String vecID = request.getParameter("veid");
        String brand = request.getParameter("brnd");
        String model = request.getParameter("mdl");
        String year = request.getParameter("yr");
        String cap = request.getParameter("capac");
        String rentPrice = request.getParameter("rprice");
        String carType = request.getParameter("type");
        String vecNo= request.getParameter("veno");
        String manuf = request.getParameter("man");
        String photo = request.getParameter("phot");
        String color = request.getParameter("colr");
        String licePla = request.getParameter("plate");
        String curMil = request.getParameter("mile");
        

        try
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbase","root","");
            String query = "insert into vehicle_information (Vehicle_ID,Brand,Model,Year,Capacity,Rent_Price,Car_type,Vehicle_Number,Manufacturer,photo,color,License_Plate,Current_Mileage)" +
                    "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, vecID);
            ps.setString(2, brand);
            ps.setString(3, model);
            ps.setString(4, year);
            ps.setString(5, cap);
            ps.setString(6, rentPrice);
            ps.setString(7, carType);
            ps.setString(8, vecNo);
            ps.setString(9, manuf);
            ps.setString(10, photo);
            ps.setString(11, color);
            ps.setString(12, licePla);
            ps.setString(13, curMil);
            ps.executeUpdate();
            con.close();
            ps.close();
            
         }catch(Exception ex)
         {
            out.println(ex.getMessage());
            out.println("Cannot Add New Car");
         }
       %>

                <h1>Record Inserted...</h1><br>
               <center><a href="AddCar.jsp">Go Back</a></center>
    </body>
</html>
