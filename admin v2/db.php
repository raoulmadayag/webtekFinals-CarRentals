<?php


$conn = new mysqli("192.168.2.64","root1","","webtech");

if(!$conn){
    var_dump($conn->error);
    die;
}
?>