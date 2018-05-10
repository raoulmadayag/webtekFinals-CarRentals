<?php

require 'db.php';

$user = $_POST['username'];
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$num = $_POST['num'];
$email = $_POST['email'];
$pass = $_POST['pass'];
$type = $_POST['type'];


if($_POST['pass'] != $_POST['pass2']){
    $m = "Password not Match!";
    echo "
            <script type = 'text/javascript'>
                alert('$m');
                window.location.replace('index.php#toregister');
            </script>
         ";
}else{
    $sql = "INSERT INTO users(username,email,firstname,lastname,password,acctype,status,contact_number) VALUES 
            ('$user','$email','$fname','$lname','$pass','$type','pending','$num')";
    $r = $conn->query($sql);
    if(!$r){
        $m = "Error!";

        echo "
            <script type = 'text/javascript'>
                alert('$m');
                window.location.replace('index.php');
            </script>
         ";
    }

    $m = "Success!";
    echo "
            <script type = 'text/javascript'>
                alert('$m');
                window.location.replace('index.php');
            </script>
         ";
}

