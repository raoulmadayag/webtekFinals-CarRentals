<?php


require 'admin/db.php';
session_start();
$user = $_POST['username'];
$pass = $_POST['password'];


$sql = "SELECT username,password,acc_Type FROM user WHERE username = ? AND password = ?";
$st = $conn->prepare($sql);
$st->bind_param('ss',$user,$pass);
$st->execute();
$res = $st->get_result();
$r = $res->fetch_row();

if($res->num_rows > 0){
    $_SESSION['username'] = $user;
    $_SESSION['userType'] = $r[2];
    header('Location:admin/dashboard.php');
}else{
    $m = "Wrong Credentials!";
    echo "
            <script type = 'text/javascript'>
                alert('$m');
                window.location.replace('index.php');
            </script>
         ";
}
