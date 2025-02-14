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
</div>
    <br>

<?php
if (isset($_POST['in_class'])) {
    $year = $_POST['course'];
    $class = $_POST['in_class'];
    $q = mysqli_query($con,
        "UPDATE classroom SET status = '$year' WHERE name = '$class'");
}
?>
<form action="allotclasses.php" method="post" style="margin-top: 100px">

    <div align="center">
        <select name="course" class="list-group-item">
            <option selected disabled>Select Course</option>
            
            <option value="2A">BTech 2nd Year Sec A</option>
            <option value="2B">BTech 2nd Year Sec B</option>
            <option value="3A">BTech 3rd Year Sec A</option>
            <option value="3B">BTech 2nd Year Sec B</option>
            <option value="4A">BTech 4th Year Sec A</option>
            <option value="4B">BTech 2nd Year Sec B</option>
        </select>
    </div>

    <div align="center" style="margin-top: 5px">
        <select name="in_class" class="list-group-item">
            <?php
            $q = mysqli_query($con,"SELECT * FROM classroom");
            $row_count = mysqli_num_rows($q);
            if ($row_count) {
                $mystring = '<option selected disabled>Select Classroom</option>';
                while ($row = mysqli_fetch_assoc($q)) {
                    if ($row['status'] != 0)
                        continue;
                    $mystring .= '<option value="' . $row['name'] . '">' . $row['name'] . '</option>';
                }
                echo $mystring;
            }
            ?>
        </select>
    </div>
    <div align="center" style="margin-top: 10px;">
        <button type="submit" class="btn btn-success btn-lg">Allot</button>
    </div>
</form>

<script>
    function deleteHandlers() {
        var table = document.getElementById("allotedclassroomstable");
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
                            window.location.href = "deleteclassallotment.php?name=" + id;

                        }

                    };
                };

            currentRow.cells[2].onclick = createDeleteHandler(currentRow);
        }
    }
</script>
<div align="center">
     

    <table id=allotedclassroomstable class="table table-bordered table-responsive">
        <caption><strong>CLASSROOMS ALLOTMENT</strong></caption>
        <tr>
            <th>Classroom</th>
            <th>Alloted To</th>
            <th>Action</th>
        </tr>
        <tbody>
        <?php
        $q = mysqli_query($con,"SELECT * FROM classroom ORDER BY name ASC");
        while ($row = mysqli_fetch_assoc($q)) {
            if ($row['status'] == 0)
                continue;

            echo "<tr><td>{$row['name']}</td>
                    <td>{$row['status']}</td>
                <td><button onclick='deleteHandlers();'>Delete</button></td>
                    </tr>\n";
        }
        //echo "<script>deleteHandlers();</script>";
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
