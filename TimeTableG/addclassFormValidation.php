<?php
require 'include/connection.php';
    $name = $_POST['CN'];
    
    $check = mysqli_query($con, "SELECT name FROM classroom WHERE name='" .$name. "'");
    $n = mysqli_num_rows($check);
    
    if($n>=1){
        ?>
        <script type='text/javascript'>if(confirm("Classroom already exists. Add Another")){document.location.href='addclassroom.php'};</script><?php
        
    } else {
    
$q = mysqli_query($con, "INSERT INTO classroom(name) VALUES ('".$name."')");
if ($q) {?>
    <script type='text/javascript'>if(confirm("Classroom added.")){document.location.href='addclassroom.php'};</script><?php
} else {?>
    <script type='text/javascript'>if(confirm("Username and/or Password incorrect.\\nTry again.")){document.location.href='index.php'};</script>
<?php
}
    }
?>