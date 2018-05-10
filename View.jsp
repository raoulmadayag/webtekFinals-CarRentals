<%-- 
    Document   : View
    Created on : May 10 2018
    Author     : Joshua Abubo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service Provider</title>
        <link href="stylesheet.css" type="text/css" rel="stylesheet" media="all" />
        <style type="text/css">
            body
            {
                background-color:rgb(237,218,193);
            }
            .wel
            {
              color:rgb(121,56,250);
              font-size:24px;
            }
            .bm
            {
                color:red;
                font-size:18px;
            }
            a
            {
                text-decoration:none;
                color:maroon;
                font-size:20px;
            }
            a:hover
            {
                text-decoration:underline;
                color:rgb(90,216,210);
            }
            h2
            {
                text-align:center;
                color:olive;
                font-size:30px;
            }
        </style>
        <script type="text/javascript">
            function del()
            {
                if(confirm("Do you want to delete This Record ?"))
                {

                }
                else
                {
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <%
            int count=0;
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/student","root","");
                         Statement st= con.createStatement();
                         ResultSet rs = st.executeQuery("select * from rent_form");
        %>
            <table border="0">
                <tr>
                    <td class="top">
                        <marquee>Service Provider Side</marquee>
                    </td>
                </tr>
                <tr>
                    <td class="header">
                    </td>
                </tr>
                <tr>
                    <td class="menu">
                       <ul>
                            <li><a href="Admin.jsp">Add Car</a></li>
                            <li><a href="Delete.jsp">View Service Request</a></li>
                            <li><a href="Update.jsp">Update Request</a></li>
                            <li><a href="View.jsp">View Transactions</a></li>
                      </ul>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                      <strong class="wel">Welcome&nbsp;</strong><strong class="bm"><%= session.getAttribute("userName") %></strong><br>
                       <a href="Login.jsp">Logout</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2>View Transaction</h2>
                    </td>
                </tr>               
                    <table border="0" align="center" cellpadding="2" cellspacing="2">
                        <tr class="field_name">
                            <td><div align="cente"><strong>Rent ID</strong></div></td>
                            <td><div align="cente"><strong>Vehicle No.</strong></div></td>
                            <td><div align="cente"><strong>SP Name</strong></div></td>
                            <td><div align="cente"><strong>Pickup Date</strong></div></td>
                            <td><div align="cente"><strong>Return Date</strong></div></td>
                            <td><div align="cente"><strong>Rent Days</strong></div></td>
                            <td><div align="cente"><strong>Rent Price</strong></div></td>
                            <td><div align="cente"><strong>Total Rent</strong></div></td>
                            <td><div align="cente"><strong>Current Mileage</strong></div></td>
                            <td><div align="cente"><strong>Gas Level</strong></div></td>
                            <td><div align="cente"><strong>Rent Status</strong></div></td>
                            <td><div align="cente"><strong>Reserved By</strong></div></td>
                            <td colspan="2"><div align="cente"><strong>Action</strong></div></td>
                        </tr>
                         <%
                         while(rs.next())
                         {
                            rs.getInt("Rent_iD");
                        %>
                        <tr class="view_field">
                            <td><div align="center"><%=++count %></div></td>
                            <td><%= rs.getString("Vehicle_Number") %></td>
                            <td><%= rs.getString("SP_Name") %></td>
                            <td><%= rs.getString("Pickup_date") %></td>
                            <td><%= rs.getString("Return_Date") %></td>
                            <td><%= rs.getString("Rent_days") %></td>
                            <td><%= rs.getString("Rent_Price") %></td>
                            <td><%= rs.getString("Total_Rent") %></td>
                            <td><%= rs.getString("Current_Mileage") %></td>
                            <td><%= rs.getString("Gas_Level") %></td>
                            <td><%= rs.getString("Rent_status") %></td>
                            <td><%= rs.getString("ReservedBy") %></td>
                            <td><div align="center"><a href="Update.jsp">Update</a></div></td>
                            
                        </tr>
                        <% } %>
                    </table>    
                <tr>
                    <table border="0" width="100%" height="100%">
                        <tr>
                          <td class="footer">
                            <ul class="footer_ul">
                            <li><a href="Admin.jsp">Add Car</a></li>
                            <li><a href="Delete.jsp">View Service Request</a></li>
                            <li><a href="Update.jsp">Update Request</a></li>
                            <li><a href="View.jsp">View Transactions</a></li>
                            </ul>
                          </td>
                       </tr>
                       <tr>
                          <td class="footer">
                            <h3>Developed by : Webtek Finals Group 3 &copy;2018</h3>
                          </td>
                       </tr>

                    </table>
                </tr>
          </table>

    </body>
</html>
