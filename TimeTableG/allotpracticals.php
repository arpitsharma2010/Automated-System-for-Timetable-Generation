<?php
require 'include/connection.php';
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>TimeTable Management System</title>
    
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="include/style.css" rel="stylesheet" type="text/css"/>
        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'/>
    </head>
<body>

<div align="center">
    
    <?php include 'include/header.php'; ?>
    
    <br>
    <form action="allotpracticalvalidation.php" method="post" style="margin-top: 100px">
    <div align="center">
        <select name="tobealloted" class="list-group-item" required style="width:400px;">
             <option selected disabled>Select Practical Subject</option>
            <?php
            $q = mysqli_query($con,"SELECT * FROM subjects WHERE type = 'LAB' ORDER BY code ASC");
            $row_count = mysqli_num_rows($q);
            if ($row_count) {
                $mystring = '';
                while ($row = mysqli_fetch_assoc($q)) {
                    if ($row['isAllotedA']==1 && $row['isAllotedB']==1)
                        continue;
                    $mystring .= '<option value="' . $row['code'] . '">' . $row['name'] . '</option>';
                }

                echo $mystring;
            }
            ?>
        </select>
    </div>
        <div class="container" style="margin-top: 5px;">
            <table class="table">
            <tr><td>
            <select  name="toallotedA" style="width: 400px;margin-top: 5px; margin-right: 10px;align-self: left;" class="list-group-item" required>
            <option selected disabled>Select Teacher for A</option>
            <?php

            $q = mysqli_query($con,"SELECT * FROM teachers ORDER BY facultyno ASC");
            $row_count = mysqli_num_rows($q);
            if ($row_count) {
                $mystring = '';
                while ($row = mysqli_fetch_assoc($q)) {
                    $mystring .= '<option value="' . $row['facultyno'] . '">' . $row['name'] . '</option>';
                }

                echo $mystring;
            }
            ?>
            </select></td><td>
        <select name="toallotedA2" style="width: 400px;margin-top: 5px;;align-self: right;" class="list-group-item" required>
            <option selected disabled>Select Teacher for A</option>
            <?php

            $q = mysqli_query($con, "SELECT * FROM teachers ORDER BY facultyno ASC");
            $row_count = mysqli_num_rows($q);
            if ($row_count) {
                $mystring = '';
                while ($row = mysqli_fetch_assoc($q)) {
                    $mystring .= '<option value="' . $row['facultyno'] . '">' . $row['name'] . '</option>';
                }

                echo $mystring;
            }
            ?>
        </select></td></tr>
            </table>
        </div>        
        <div class="container">
            <table class="table">
            <tr><td>
            <select  name="toallotedB" style="width: 400px;margin-top: 5px; margin-right: 10px;align-self: left;" class="list-group-item" required>
            <option selected disabled>Select Teacher for B</option>
            <?php

            $q = mysqli_query($con,"SELECT * FROM teachers ORDER BY facultyno ASC");
            $row_count = mysqli_num_rows($q);
            if ($row_count) {
                $mystring = '';
                while ($row = mysqli_fetch_assoc($q)) {
                    $mystring .= '<option value="' . $row['facultyno'] . '">' . $row['name'] . '</option>';
                }

                echo $mystring;
            }
            ?>
            </select></td><td>
        <select name="toallotedB2" style="width: 400px;margin-top: 5px;;align-self: right;" class="list-group-item" required>
            <option selected disabled>Select Teacher for B</option>
            <?php

            $q = mysqli_query($con, "SELECT * FROM teachers ORDER BY facultyno ASC");
            $row_count = mysqli_num_rows($q);
            if ($row_count) {
                $mystring = '';
                while ($row = mysqli_fetch_assoc($q)) {
                    $mystring .= '<option value="' . $row['facultyno'] . '">' . $row['name'] . '</option>';
                }

                echo $mystring;
            }
            ?>
        </select></td></tr>
            </table>
        </div>
        
    </div>
    <div align="center" style="margin-top: 10px">
        <button type="submit" class="btn btn-success btn-lg">Allot</button>
    </div>
</form>

<script>
    function deleteHandlersForPractical() {
        var table = document.getElementById("allotedpracticalstable");
        var rows = table.getElementsByTagName("tr");
        for (i = 0; i < 5; i++) {
            var currentRow = table.rows[i];
            var createDeleteHandler =
                function (row) {
                    return function () {
                        var cell = row.getElementsByTagName("td")[0];
                        var id = cell.innerHTML;
                        var x;
                        if (confirm("Are You Sure?") == true) {
                            window.location.href = "deletepracticalallotment.php?name=" + id;
                        }

                    };
                };

            currentRow.cells[4].onclick = createDeleteHandler(currentRow);
        }
    }
</script>

   <table id="allotedpracticalstable" class="table table-bordered table-responsive">
    <caption><strong>PRACTICAL COURSES ALLOTMENT</strong></caption>
    <tr>
        <th>Subject Title</th>
        <th>Subject Name</th>
        <th>Teacher's Alias for A</th>
        <th>Teacher's Alias for B</th>
        <th>Action</th>
    </tr>
    <tbody>
    <?php
    $q = mysqli_query($con,"SELECT * FROM subjects ORDER BY code ASC");
    
    while ($row = mysqli_fetch_assoc($q)) {
        if ($row['isAllotedA'] == 0 && $row['isAllotedB'] == 0)
            continue;
        if (!($row['type'] == "LAB"))
            continue;
        $teacher_idA1 = $row['allotedtoA'];
        $teacher_idA2 = $row['allotedtoA2'];
        $tA1 = mysqli_query($con,"SELECT alias FROM teachers WHERE facultyno = '$teacher_idA1'");
        $trowA1 = mysqli_fetch_assoc($tA1);
        $tA2 = mysqli_query($con,"SELECT alias FROM teachers WHERE facultyno = '$teacher_idA2'");
        $trowA2 = mysqli_fetch_assoc($tA2);

        $teacher_idB1 = $row['allotedtoB'];
        $teacher_idB2 = $row['allotedtoB2'];
        $tB1 = mysqli_query($con,"SELECT alias FROM teachers WHERE facultyno = '$teacher_idB1'");
        $trowB1 = mysqli_fetch_assoc($tB1);
        $tB2 = mysqli_query($con,"SELECT alias FROM teachers WHERE facultyno = '$teacher_idB2'");
        $trowB2 = mysqli_fetch_assoc($tB2);
        for($x=0;$x<2;$x++){
        if($x%2==0){
        
        echo "<tr><td rowspan='2' align='center' valign='middle'>{$row['sname']}</td>
                    <td rowspan='2' align='center' valign='middle'>{$row['name']}</td>
                    <td>{$trowA1['alias']}</td>
                    <td>{$trowB1['alias']}</td>
                    <td rowspan='2' valign='center'>
                    <button onclick='deleteHandlersForPractical();'>Delete</button></td>
                    </tr>\n";
        }
        else{
            echo "<tr>                    
                    <td>{$trowA2['alias']}</td>
                    <td>{$trowB2['alias']}</td>
                    </tr>\n";
        }
        }
    }
//    echo "<script>deleteHandlersForPractical();</script>";
    ?>
    </tbody>
</table>

    <?php include 'include/footer.php'; ?>

<!--  Jquery Core Script -->
<script src="assets/js/jquery-1.10.2.js"></script>
<!--  Core Bootstrap Script -->
<script src="assets/js/bootstrap.js"></script>
<!--  Flexslider Scripts -->
<script src="assets/js/jquery.flexslider.js"></script>
<!--  Scrolling Reveal Script -->
<script src="assets/js/scrollReveal.js"></script>
<!--  Scroll Scripts -->
<script src="assets/js/jquery.easing.min.js"></script>
<!--  Custom Scripts -->
<script src="assets/js/custom.js"></script>
</body>
</html>
