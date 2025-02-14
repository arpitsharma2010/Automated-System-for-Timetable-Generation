<?php
require 'include/connection.php';
$id = $_GET['class'];
$q = mysqli_query($con,
    "DELETE FROM classroom WHERE name = '$id' ");
if ($q) {

    header("Location:addclassroom.php");

} else {
    echo 'Error';
}