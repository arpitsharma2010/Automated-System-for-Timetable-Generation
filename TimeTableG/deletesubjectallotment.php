<?php
require 'include/connection.php';
$id = $_GET['name'];
$q = mysqli_query($con,
    "UPDATE subjects SET isAllotedA=0, isAllotedB=0 , allotedtoA = NULL, allotedtoB=NULL WHERE sname = '$id' ");
if ($q) {

    header("Location:allotsubjects.php");

} else {
    echo 'Error';
}