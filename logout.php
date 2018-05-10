<?php
/**
 * Created by PhpStorm.
 * User: Koizumi Glo
 * Date: 10/05/2018
 * Time: 4:22 PM
 */

session_start();
session_destroy();

header('Location:index.php');

