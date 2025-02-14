<?php
include 'include/connection.php';
$id = $_GET['facultyno'];
$q = mysqli_query($con,
    "DELETE FROM teachers WHERE facultyno = '$id' ");
$qq = mysqli_query($con, "DROP TABLE `".$id."`");


if ($q && $qq) {

    header("Location:addteacher.php");

} else {
    echo 'Error';
}