<?php
session_start();


if(!isset($_SESSION['username'])){
    $m = "Please Login first!";
    echo "
            <script type = 'text/javascript'>
                alert('$m');
                window.location.replace('../index.php');
            </script>
         ";
}

if($_SESSION['userType'] != 'Admin' ){
    $m = "Unauthorize Success!";
    echo "
                <script type = 'text/javascript'>
                    alert('$m');
                    window.location.replace('../index.php');
                </script>
             ";
}
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Paper Dashboard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">

</head>
<body>

<div class="wrapper">
	<div class="sidebar" data-background-color="white" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text"><strong>
                        <?php
                        echo $_SESSION['username'];

                        ?>
                    </strong></a>
            </div>

            <ul class="nav">
                <li >
                    <a href="dashboard.php">
                        <i class="ti-panel"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="active">
                    <a href="users.php">
                        <i class="ti-view-list-alt"></i>
                        <p>Users</p>
                    </a>
                </li>
                <li>
                    <a href="transactions.php">
                        <i class="ti-bell"></i>
                        <p>Transaction</p>
                    </a>
                </li>
                <li class="active-pro">
                    <a href="logout.php">
                        <i class="ti-export"></i>
                        <p>Logout</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                </div>

            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header text-center">
                                <h2>Pending Users</h2>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-striped">
                                    <thead>
                                    <th>Username</th>
                                    <th>Name</th>
                                    <th>Type</th>
                                    <th>Contact No</th>
                                    <th>Address</th>
                                    <th>Options</th>
                                    </thead>
                                    <tbody>
                                    <?php
                                    require 'db.php';

                                    $sql = "SELECT * FROM user WHERE status = 'pending'";
                                    $res = $conn->query($sql);

                                    while ($row = $res->fetch_assoc()){
                                        echo "<tr><td>" . $row['username']  ."</td>" .
                                            "<td>" . $row['first_Name'] . ' ' . $row['last_Name']  ."</td>" .
                                            "<td>" . $row['acc_Type']  ."</td>".
                                            "<td>" . $row['contact_No']  ."</td>" .
                                            "<td>" . $row['address']  ."</td>";
                                        echo "<td>" . "<a href=" . 'accept.php?num=' . $row['user_Id'] . "  " . " class='material-icons' >Accept</a>" . ' &nbsp ' .  "<a href=" . 'reject.php?num=' . $row['user_Id'] . "  " . " class='material-icons' >Reject</a>";
                                    }
                                    ?>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header text-center">
                                <h2>Active Users</h2>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-striped">
                                    <thead>
                                    <th>Username</th>
                                    <th>Name</th>
                                    <th>Type</th>
                                    <th>Contact No</th>
                                    <th>Address</th>
                                    <th>Options</th>
                                    </thead>
                                    <tbody>
                                    <?php
                                    require 'db.php';

                                    $sql = "SELECT * FROM user WHERE status = 'activated'";
                                    $res = $conn->query($sql);

                                    while ($row = $res->fetch_assoc()){
                                        echo "<tr><td>" . $row['username']  ."</td>" .
                                            "<td>" . $row['first_Name'] . ' ' . $row['last_Name']  ."</td>" .
                                            "<td>" . $row['acc_Type']  ."</td>".
                                            "<td>" . $row['contact_No']  ."</td>" .
                                            "<td>" . $row['address']  ."</td>";
                                        echo "<td>" . "<a href=" . 'deactivate.php?num=' . $row['user_Id'] . "  " . " class='material-icons' >Deactivate</a>";
                                    }
                                    ?>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header text-center">
                                <h2>Denied Users</h2>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-striped">
                                    <thead>
                                    <th>Username</th>
                                    <th>Name</th>
                                    <th>Type</th>
                                    <th>Contact No</th>
                                    <th>Address</th>
                                    <th>Options</th>
                                    </thead>
                                    <tbody>
                                    <?php
                                    require 'db.php';

                                    $sql = "SELECT * FROM user WHERE status = 'denied'";
                                    $res = $conn->query($sql);

                                    while ($row = $res->fetch_assoc()){
                                        echo "<tr><td>" . $row['username']  ."</td>" .
                                            "<td>" . $row['first_Name'] . ' ' . $row['last_Name']  ."</td>" .
                                            "<td>" . $row['acc_Type']  ."</td>".
                                            "<td>" . $row['contact_No']  ."</td>" .
                                            "<td>" . $row['address']  ."</td>";
                                        echo "<td>" . "<a href=" . 'activate.php?num=' . $row['user_Id'] . "  " . " class='material-icons' >Activate</a>";
                                    }
                                    ?>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>




    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>


</html>
