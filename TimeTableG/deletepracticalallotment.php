<?php
require 'include/connection.php';
$id = $_GET['name'];
$q = mysqli_query($con,
    "UPDATE subjects SET isAllotedA = 0, isAllotedB=0 , allotedtoA = NULL, allotedtoA2 = NULL, allotedtoB=NULL, allotedtoB2=NULL WHERE sname = '$id' ");
if ($q) {

    header("Location:allotpracticals.php");

} else {
    echo 'Error';
}