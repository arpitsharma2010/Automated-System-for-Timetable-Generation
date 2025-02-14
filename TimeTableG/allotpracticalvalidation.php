<?php
require 'include/connection.php';
if (isset($_POST['tobealloted']) && isset($_POST['toallotedA']) && isset($_POST['toallotedA2']) && isset($_POST['toallotedB']) && isset($_POST['toallotedB2'])) {
    $subject = $_POST['tobealloted'];
    $teacherA = $_POST['toallotedA'];
    $teacherA2 = $_POST['toallotedA2'];
    $teacherB = $_POST['toallotedB'];
    $teacherB2 = $_POST['toallotedB2'];
    
    $q = mysqli_query($con, "UPDATE subjects SET isAllotedA=1, isallotedB=1, allotedtoA='$teacherA', allotedtoA2='$teacherA2', allotedtoB='$teacherB', allotedtoB2='$teacherB2' WHERE code='$subject'");

    if ($q) {
        echo "<script>if(confirm('Done')){document.location.href='allotpracticals.php';}else{document.location.href='addsubject.php';}</script>";
    } else {
        echo "<script>if(confirm('You are Logged out.')){document.location.href='logout.php';}else{document.location.href='logout'.php';}</script>";

    }

    
} else {
    echo "<script>if(confirm('Invalid Input.')){document.location.href='allotsubjects.php';}else{document.location.href='allotsubjects.php';}</script>";

}

?>