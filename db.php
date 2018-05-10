<?php


$conn = new mysqli("localhost","root","","dbase");

if(!$conn){
    echo "Error Connecting to DB " . $conn->error;
    die;
}