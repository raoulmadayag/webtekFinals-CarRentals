<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CarGO CarIN | Home</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  <link rel="stylesheet" href="plugins/timepicker/bootstrap-timepicker.min.css">
    
        <link href="css/hover.css" rel="stylesheet" media="all">
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" media="all">
</head>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">
  <div class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header" style="border-right: 3px solid black">
          <a href="index.jsp" class="navbar-brand"><b>CarGO</b>CarIN</a>
        </div>
          <div class="navbar-header" style="padding-left: 15px;">
          <a class="navbar-brand"></a>
        </div>
    </div>
    </nav>
  </div>

    
    <ul class="nav navbar-nav" id="menu" style="float: right">
        <li class="dropdown">
              <a href="#" data-toggle="dropdown">Menu<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="addnewcar.jsp">Add Car</a></li>
                <li><a href="ViewRequest.jsp">View Request</a></li>
                  <li><a href="ViewTransaction.jsp">View Transactions</a></li>
                <li><a href="ViewCar.jsp">View Cars</a></li>
       
              </ul>
            </li>
        <li><a href="#" class="glyphicon glyphicon-lock" >Logout</a></li>
    </ul>
    
    </div>
    <br>
    
    
    <br>
    <div class="col-md-12" id="pending">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"> </h3>
            </div>
        

            
            
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
  
        <footer class="main-footer">
    <div class="container">
      <strong> 2018 Webtech Group 3</strong>
    </div>
  </footer>                  
                  
                  
                  
                  
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="dist/js/app.min.js"></script>
<script src="dist/js/demo.js"></script>
<script>
	/**
			 * Used to demonstrate Hover.css only. Not required when adding
			 * Hover.css to your own pages. Prevents a link from being
			 * navigated and gaining focus.
			 */
			var effects = document.querySelectorAll('.effects')[0];

			effects.addEventListener('click', function(e) {

				if (e.target.className.indexOf('hvr') > -1) {
					e.preventDefault();
					e.target.blur();

				}
			});

</script>
<script>
        
      $(function () {
    $(".timepicker").timepicker({
      showInputs: false
    });
  });
</script>
</body>
</html>
    
    
    
    
    