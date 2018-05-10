<?php

require 'db.php';

$aa = $_GET['num'];


$sql = "UPDATE users SET status = 'declined' WHERE idUsers = '$aa'";
$conn->query($sql);


header('Location:users.php');