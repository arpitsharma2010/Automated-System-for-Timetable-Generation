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
    
    
    
    <form action="allotsubjectvalidation.php" method="post" style="margin-top: 100px">
        <div style="margin-top: 5px">
            <select name="tobealloted" class="list-group-item" required="true" style="width: 400px;">
                <option selected disabled>Select Subject</option>
                <?php
                $q = mysqli_query($con,"SELECT * FROM subjects");
                $row_count = mysqli_num_rows($q);
                if ($row_count) {
                    while ($row = mysqli_fetch_assoc($q)) {
                        if (($row['isAllotedA'] == 1 && $row['isAllotedB']==1) || $row['type'] == "LAB")
                            continue;
                        $mystring .= '<option value="' . $row['code'] . '">' . $row['name'] . '</option>';
                    }

                    echo $mystring;
                }
                ?>
            </select>
        </div><br>
        <div>
            <select name="toallotedA" class="list-group-item" required="true"  style="width: 400px;">
                <option selected disabled>Select Teacher for sec A</option>
                <?php
                $qA = mysqli_query($con, "SELECT * FROM teachers ORDER BY facultyno ASC");
                $row_countA = mysqli_num_rows($qA);
                if ($row_countA) {
                    $mystring = "";
                    while ($rowA = mysqli_fetch_assoc($qA)) {
                        $mystring .= '<option value="' . $rowA['facultyno'] . '">' . $rowA['name'] . '</option>';
                    }

                    echo $mystring;
                }
                ?>
            </select>
        </div><br>
        <div>
            <select name="toallotedB" class="list-group-item" required="true" style="width: 400px;">
                <option selected disabled>Select Teacher for sec B</option>
                <?php
                $qB = mysqli_query($con, "SELECT * FROM teachers ORDER BY facultyno ASC");
                $row_countB = mysqli_num_rows($qB);
                if ($row_countB) {
                    $mystring = "";
                    while ($rowB = mysqli_fetch_assoc($qB)) {
                        $mystring .= '<option value="' . $rowB['facultyno'] . '">' . $rowB['name'] . '</option>';
                    }

                    echo $mystring;
                }
                ?>
            </select>
        </div>
        <div style="margin-top: 10px">
            <button type="submit" class="btn btn-success btn-lg">Allot</button>
        </div>
    </form>
</div>
<script>
    function deleteHandlers() {
        var table = document.getElementById("allotedsubjectstable");
        var rows = table.getElementsByTagName("tr");
        for (i = 0; i < rows.length; i++) {
            var currentRow = table.rows[i];
            var createDeleteHandler =
                function (row) {
                    return function () {
                        var cell = row.getElementsByTagName("td")[0];
                        var id = cell.innerHTML;
                        var x;
                        if (confirm("Are You Sure?") == true) {
                            window.location.href = "deletesubjectallotment.php?name=" + id;

                        }

                    };
                };

            currentRow.cells[4].onclick = createDeleteHandler(currentRow);
        }
    }
</script>

    <br>
        <div class="container-fluid">
            <table class="table table-bordered table-responsive" id="allotedsubjectstable">
                <caption><strong>Theory Courses Allotment</strong></caption>
                <tr>
                    <th>Subject Title</th>
                    <th>Subject Name</th>
                    <th>Teacher's Alias for A</th>
                    <th>Teacher's Alias for B</th>
                    <th>Action</th>
                </tr>
                <tbody>
    <?php
    $q = mysqli_query($con,"SELECT * FROM subjects ");

    while ($row = mysqli_fetch_assoc($q)) {
        if ($row['isAllotedA'] == 0 || $row['type'] == 'LAB')
            continue;
        $teacher_idA = $row['allotedtoA'];
        $tA = mysqli_query($con, "SELECT alias FROM teachers WHERE facultyno = '$teacher_idA'");
        $trowA = mysqli_fetch_assoc($tA);
        
        if ($row['isAllotedB'] == 0 || $row['type'] == 'LAB')
            continue;
        $teacher_idB = $row['allotedtoB'];
        $tB = mysqli_query($con, "SELECT alias FROM teachers WHERE facultyno = '$teacher_idB'");
        $trowB = mysqli_fetch_assoc($tB);
        
        echo "<tr><td>{$row['sname']}</td>
                    <td>{$row['name']}</td>
                    <td>{$trowA['alias']}</td>
                    <td>{$trowB['alias']}</td>
                   <td>
                    <button onclick='deleteHandlers();'>Delete</button></td>
                    </tr>\n";
    }
//    echo "<script>deleteHandlers();</script>";
    ?>
                </tbody>
            </table>
        </div>

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
