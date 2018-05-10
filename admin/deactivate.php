<?php

require 'db.php';

$aa = $_GET['num'];


$sql = "UPDATE users SET status = 'approved' WHERE idUsers = '$aa'";
$conn->query($sql);


header('Location:users.php');