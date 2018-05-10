<?php
/**
 * Created by PhpStorm.
 * User: Koizumi Glo
 * Date: 10/05/2018
 * Time: 4:29 PM
 */

$conn = new mysqli("localhost","root","","dbase");

if(!$conn){
    echo "Error Connecting to DB " . $conn->error;
    die;
}