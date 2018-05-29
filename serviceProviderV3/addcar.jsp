<%@page import="com.javatpoint.dao.CarDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.car"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

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
          <a class="navbar-brand">Welcome!<b>code of php name</b></a>
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
                <li><a href="#admin">Admins</a></li>
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
        

              <%  
int i=CarDao.save(u);  
if(i>0){  
response.sendRedirect("success.jsp");  
}else{  
response.sendRedirect("fail.jsp");  
}  
%>  


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
    
    
    
    
    