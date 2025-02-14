<?php
    require 'include/connection.php';
    
    $username = $_POST['UN'];
    $password = $_POST['PASS'];
    

    if($username==="admin" and $password==="pass123"){
        session_start();
        $_SESSION["user"] = $username;
        header('location: addteacher.php');
        
    }
    else{
        echo "<script type='text/javascript'>window.alert('Wrong Username and Password');"
        . "window.location.replace('index.php')</script>";
        header('location: index.php');
    }
    
?>