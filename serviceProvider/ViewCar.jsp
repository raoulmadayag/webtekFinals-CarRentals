<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
	<body>
	  <div class="menu">
    	<ul>
            <li><a href="AddCar.html">Add Car</a></li>
            <li><a href="ViewRequest.jsp">View Service Request</a></li>
            <li><a href="AcceptDeny.jsp">Update Request</a></li>
            <li><a href="ViewTransaction.jsp">View Transactions</a></li>
            <li><a href="#">Logout</a></li>
        </ul>
      </div>
      <div>
		<h1>Cars</h1>
		<table border="1">
			<tr>
				<td>Vehicle ID</td>
				<td>Brand</td>
				<td>Model</td>
				<td>Year</td>
				<td>Capacity</td>
				<td>Rent Price</td>
				<td>Car Type</td>
				<td>Vehicle Number</td>
				<td>Color</td>
				<td>License Plate</td>
				<td>Current Mileage</td>
				<td>Photo</td>
			</tr>
			<%
				try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from requests";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
			%>
			<tr>
				<td><%=resultSet.getString("vehicle_Id") %></td>
				<td><%=resultSet.getString("brand") %></td>
				<td><%=resultSet.getString("model") %></td>
				<td><%=resultSet.getString("year") %></td>
				<td><%=resultSet.getString("capacity") %></td>
				<td><%=resultSet.getString("rent_Price") %></td>
				<td><%=resultSet.getString("car_Type") %></td>
				<td><%=resultSet.getString("vehicle_No") %></td>
				<td><%=resultSet.getString("color") %></td>
				<td><%=resultSet.getString("license_Plate") %></td>
				<td><%=resultSet.getString("current_Mileage") %></td>
				<td><%=resultSet.getString("photo") %></td>
			</tr>
			<%
				}
				connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</table>
	  </div>
	</body>
	<footer>
          <ul class="footer_ul">
              <li><a href="AddCar.html">Add Car</a></li>
               <li><a href="ViewRequest.jsp">View Service Request</a></li>
               <li><a href="AcceptDeny.jsp">Update Request</a></li>
               <li><a href="ViewTransaction.jsp">View Transactions</a></li>
               <li><a href="#">Logout</a></li>
           </ul>
        <div class="footer">
           <h3>Developed by : Raoul and Friends &copy;2018</h3>
        </div>
</footer>
</html>