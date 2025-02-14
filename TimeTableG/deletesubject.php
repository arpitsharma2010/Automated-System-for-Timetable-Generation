<?php

require 'include/connection.php';
$id = $_GET['code'];
$q = mysqli_query($con,
    "DELETE FROM subjects WHERE code = '$id' ");

if ($q) {

    header("Location:addsubject.php");

} else {
    echo 'Error';
}
?>

