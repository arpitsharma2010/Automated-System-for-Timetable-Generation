<?php

require 'include/connection.php';
$code = mysqli_real_escape_string($con,$_POST['SC']);
$name = mysqli_real_escape_string($con,$_POST['SN']);
$sname = mysqli_real_escape_string($con,$_POST['AN']);
$sem = mysqli_real_escape_string($con,$_POST['SS']);
$type = mysqli_real_escape_string($con,$_POST['ST']);

$check = mysqli_query($con, "SELECT code FROM subjects WHERE code='" .$code. "'");
    $n = mysqli_num_rows($check);
    
    if($n>=1){
        ?>
        <script type='text/javascript'>if(confirm("Subject already exists. Add Another")){document.location.href='addsubject.php'};</script><?php
        
    } else {
        $q = mysqli_query($con, "INSERT INTO subjects(code,name,sname,type,semester) VALUES ('$code','$name','$sname','$type','$sem')");
        if ($q) {
            ?>
        <script type='text/javascript'>if(confirm("Subject added.")){document.location.href='addsubject.php'};</script>
        <?php
        } else {?>
            <script type='text/javascript'>if(confirm("Username and/or Password incorrect.\\nTry again.")){document.location.href='loSgout.php'};</script>
<?php
}
    }
?>