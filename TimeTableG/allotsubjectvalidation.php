<?php
require 'include/connection.php';
if (isset($_POST['tobealloted']) && isset($_POST['toallotedA']) && isset($_POST['toallotedB'])) {
    $subject = $_POST['tobealloted'];
    $teacherA = $_POST['toallotedA'];
    $teacherB = $_POST['toallotedB'];
    
    $q = mysqli_query($con, "UPDATE subjects SET isAllotedA=1, allotedtoA='$teacherA', isAllotedB=1,allotedtoB='$teacherB' WHERE code='$subject'");

    if ($q) {
        
        echo "<script>if(confirm('Done')){document.location.href='allotsubjects.php';}else{document.location.href='addsubject.php';}</script>";
    } else {
        echo "<script>if(confirm('You are Logged out.')){document.location.href='logout.php';}else{document.location.href='logout'.php';}</script>";
    }
    
} else {
    echo "<script>if(confirm('Invalid Input.')){document.location.href='allotsubjects.php';}else{document.location.href='allotsubjects.php';}</script>";
}


?>