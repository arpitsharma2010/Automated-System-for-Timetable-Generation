<?php
require 'include/connection.php';
$id = $_GET['name'];
$q = mysqli_query($con,
    "UPDATE classroom SET status=0 WHERE name = '$id' ");
if ($q) {

    header("Location:allotsubjects.php");

} else {
    echo 'Error';
}