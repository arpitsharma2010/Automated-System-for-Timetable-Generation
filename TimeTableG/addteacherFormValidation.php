<?php
require 'include/connection.php';
    $no = mysqli_real_escape_string($con,$_POST['FN']);
    $name = mysqli_real_escape_string($con,$_POST['TN']);
    $alias = mysqli_real_escape_string($con,$_POST['AL']);
    $designation = mysqli_real_escape_string($con,$_POST['TD']);
    $contact = mysqli_real_escape_string($con,$_POST['TC']);
    $email = mysqli_real_escape_string($con,$_POST['TE']);
    $check = mysqli_query($con, "SELECT alias FROM teachers WHERE alias='" .$alias. "'");
    $n = mysqli_num_rows($check);
    //  $message = "nTry again.";
    // echo "<script type='text/javascript'>alert('$message');</script>";
    if($n>=1){
        ?>
        <script type='text/javascript'>if(confirm("Teacher already exists. Add Another")){document.location.href='addteacher.php'};</script><?php
        
    } else {
        $q = mysqli_query($con, "INSERT INTO teachers(facultyno,name,alias,designation,contact,email) VALUES ('".$no."','".$name."','".$alias."','".$designation."','".$contact."','".$email."')");
        $s = mysqli_query($con, "CREATE TABLE `".$no."`(`day` varchar(20) NULL,`period1` varchar(20) NULL,`period2` varchar(20) NULL,`period3` varchar(20) NULL,`period4` varchar(20) NULL,`period5` varchar(20) NULL,`period6` varchar(20) NULL,UNIQUE(`day`));");
        if ($q && $s) {
            mysqli_query($con, "INSERT INTO `".$no."` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES ('mondayo', NULL, NULL, NULL, NULL, NULL, NULL);");
            mysqli_query($con, "INSERT INTO `".$no."` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES ('tuesdayo', NULL, NULL, NULL, NULL, NULL, NULL);");
            mysqli_query($con, "INSERT INTO `".$no."` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES ('wednesdayo', NULL, NULL, NULL, NULL, NULL, NULL);");
            mysqli_query($con, "INSERT INTO `".$no."` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES ('thursdayo', NULL, NULL, NULL, NULL, NULL, NULL);");
            mysqli_query($con, "INSERT INTO `".$no."` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES ('fridayo', NULL, NULL, NULL, NULL, NULL, NULL);");
            mysqli_query($con, "INSERT INTO `".$no."` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES ('mondaye', NULL, NULL, NULL, NULL, NULL, NULL);");
            mysqli_query($con, "INSERT INTO `".$no."` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES ('tuesdaye', NULL, NULL, NULL, NULL, NULL, NULL);");
            mysqli_query($con, "INSERT INTO `".$no."` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES ('wednesdaye', NULL, NULL, NULL, NULL, NULL, NULL);");
            mysqli_query($con, "INSERT INTO `".$no."` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES ('thursdaye', NULL, NULL, NULL, NULL, NULL, NULL);");
            mysqli_query($con, "INSERT INTO `".$no."` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES ('fridaye', NULL, NULL, NULL, NULL, NULL, NULL);");
            ?>
            <script type='text/javascript'>if(confirm("Teacher added.")){document.location.href='addteacher.php'};</script>
            <?php
            
        } else {
            ?>
            <script type='text/javascript'>if(confirm("You were loggedout.\\nTry again.")){document.location.href='index.php'};</script>
            <?php
            header("Location:index.php");
        }
    }
