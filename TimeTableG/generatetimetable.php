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

    
    <?php include 'include/header.php'; ?>

    
<form action="algorithm.php">
    <div align="center" style="margin-top: 50px">
        <input type="submit" id="generatebutton" class="btn btn-inverse" value="GENERATE" name="generate">
    </div>
</form>

<form action="generatetimetable.php" method="post">
    <div align="center" style="margin-top: 20px">
        <select name="select_semester" class="list-group-item" required>
            <option disabled>Select Semester</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
        </select>
        <input type="submit" id="viewsemester" class="btn btn-default btn-primary" style="margin-top: 5px" name="viewtimetable" value="VIEW TIMETABLE">
    </div>
</form>
<script>
    var index = -1;
    function Substitute() {
        var table = document.getElementById("timetable");
        var cells = table.getElementsByTagName("td");
        // window.alert(cells[3].innerHTML.toString());
        for (i = 0; i < cells.length; i++) {
            if (i % 8 == 6 || i % 8 == 7 || parseInt(i / 8) == 0 || i % 8 == 0) {
                continue;
            }
            var currentCell = cells[i];
            //var b = currentRow.getElementsByTagName("td")[0];
            var createSubstituteHandler =
                function (cell, i) {
                    return function () {

                        document.getElementById('cell_number').value = i;
                        index = i;
                        var xmlhttp = new XMLHttpRequest();
                        xmlhttp.onreadystatechange = function () {
                            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                                var modal = document.getElementById('myModal');
                                modal.style.display = "block";
                                document.getElementById("substitute").innerHTML = this.responseText;

                            }
                        };
                        xmlhttp.open("GET", "getcellindex.php?i=" + i, false);
                        xmlhttp.send();
                    };
                };
            currentCell.onclick = createSubstituteHandler(currentCell, i);
        }
    }
</script>

<div>
    <br>

    <div id="TT" style="background-color: #FFFFFF" class="container-fluid">
        <table class="table table-bordered table-hover table-responsive" border="2" cellspacing="3" align="center" id="timetable" >
            <caption><strong><br><br>
                    <?php
                    if (isset($_POST['select_semester'])) {
                        echo "COMPUTER ENGINEERING DEPARTMENT SEMESTER " . $_POST['select_semester'] . " ";
                        $year = (int)($_POST['select_semester'] / 2) + $_POST['select_semester'] % 2;
                        $r = mysqli_fetch_assoc(mysqli_query($con, "SELECT * from classroom WHERE status = '$year'"));
                        echo " ( " . $r['name'], " ) ";
                    } else if (isset($_POST['select_teacher'])) {
                        $id = $_POST['select_teacher'];
                        $r = mysqli_fetch_assoc(mysqli_query($con, "SELECT * from teachers WHERE facultyno = '$id'"));
                        echo $r['name'];
                    } else if (isset($_GET['display'])) {
                        $id = $_GET['display'];
                        $r = mysqli_fetch_assoc(mysqli_query($con, "SELECT * from teachers WHERE facultyno = '$id'"));
                        echo $r['name'];

                    }
                    ?>
                </strong></caption>
            <tr>
                <td style="text-align:center; font-style: oblique;">WEEKDAYS</td>
                <td style="text-align:center; font-style: oblique;">1st Slot</td>
                <td style="text-align:center; font-style: oblique;">2nd Slot</td>
                <td style="text-align:center; font-style: oblique;">3rd Slot</td>
                <td style="text-align:center; font-style: oblique;">4th Slot</td>
                <td style="text-align:center; font-style: oblique;">5th Slot</td>
                <td style="text-align:center; font-style: oblique;">6th Slot</td>

            </tr>
                <?php
                $table = null;
                if (isset($_POST['select_semester'])) {
                    $table = " semester" . $_POST['select_semester'] . " ";
                } else if (isset($_GET['display'])) {
                    $table = " " . $_GET['display'] . " ";
                } else
                    echo '</table>';
                if (isset($_POST['select_semester']) || isset($_POST['select_teacher']) || isset($_GET['display'])) {
                    $q = mysqli_query($con,"SELECT * FROM " . $table);
                    $qq = mysqli_query($con,"SELECT * FROM subjects");
                    $days = array('MONDAY-A', 'TUESDAY-A', 'WEDNESDAY-A', 'THURSDAY-A', 'FRIDAY-A','MONDAY-B', 'TUESDAY-B', 'WEDNESDAY-B', 'THURSDAY-B', 'FRIDAY-B');
                    $i = -1;
                    
                    
                    while ($row = mysqli_fetch_assoc($q)) {
                        $i++;

                        echo "
                <tr><td style=\"text-align:center\">$days[$i]</td>
                <td style=\"text-align:center\">{$row['period1']}</td>
                <td style=\"text-align:center\">{$row['period2']}</td>
                <td style=\"text-align:center\">{$row['period3']}</td>
                <td style=\"text-align:center\">{$row['period4']}</td>
                <td style=\"text-align:center\">{$row['period5']}</td>
                <td style=\"text-align:center\">{$row['period6']}</td>
                </tr>\n";
                    }
?>
            </table>
                <?php
                    $sign = "TIMETABLE MANAGEMENT SYSTEM, COMPUTER SCIENCE & ENGINEERING DEPARTMENT";
                    echo "<div style='margin-left: 10px' align='center'>" . "<strong>" . $sign . "<br></strong></div>";
                }
                
                ?>
    </div>
</div>
    <br>
        <form action="deletesemtimetable.php" method="post">
            <div align="center">
                <input type="submit" class="btn btn-danger" name="Delete" value="Delete All Semester Timetable">
            </div>
        </form>
        <br>
        
    <br>

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
