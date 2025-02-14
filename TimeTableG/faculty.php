<?php
    require 'include/connection.php';
    $id = $_POST['id'];
    $semester = $_POST['semester'];
    $query = "SELECT * FROM teachers where facultyno = ".$id;
    $result = mysqli_query($con, $query);
    
    if(!mysqli_fetch_row($result)){?>
        <script type='text/javascript'>if(confirm("Invalid Faculty No.")){document.location.href='index.php'};</script>
    <?php
        } else{
            if($semester==='even'){
    ?>
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

        
            
<div>
    <br>
    <div id="TT" style="background-color: #FFFFFF" class="container-fluid">
        <table class="table table-bordered table-hover table-responsive" border="2" cellspacing="3" align="center" id="timetable" >
            <thead>
                <b>
                    Welcome,<br> 
                        <?php
                        $row = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM teachers where facultyno = ".$id));
                        echo $row['designation']." ";
                        echo $row["name"];
                        ?>
                </b>
                <div style="align"></div>
            </thead>
            
            <caption><strong>
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
            <tr>
                <?php
                $table = null;
                if (isset($_POST['id'])) {
                    $table = $_POST['id'];
                } else
                    echo '</table>';
                if (isset($_POST['id'])) {
                    $q = mysqli_query($con,"SELECT * FROM `" . $table."` HAVING day LIKE '%e'");
                    $qq = mysqli_query($con,"SELECT * FROM classroom");
                    $days = array('MONDAY', 'TUESDAY', 'WEDNESDAY', 'THURSDAY', 'FRIDAY');
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
        <a href="index.php"><button class="btn btn-primary" name="DONE">DONE</button></a>
                <?php
                    $sign = "TIMETABLE MANAGEMENT SYSTEM, COMPUTER SCIENCE & ENGINEERING DEPARTMENT";
                    echo "<div style='margin-left: 10px' align='center'>" . "<strong>" . $sign . "<br></strong></div>";
                }
                
                ?>
    </div>
</div>
    <br>

        <?php include 'include/footer.php'; 
            }
            else {
                ?>
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

        
            
<div>
    <br>
    <div id="TT" style="background-color: #FFFFFF" class="container-fluid">
        <table class="table table-bordered table-hover table-responsive" border="2" cellspacing="3" align="center" id="timetable" >
            <thead>
                <b>
                    Welcome,<br> 
                        <?php
                        $row = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM teachers where facultyno = ".$id));
                        echo $row['designation']." ";
                        echo $row["name"];
                        ?>
                </b>
                <div style="align"></div>
            </thead>
            
            <caption><strong>
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
            <tr>
                <?php
                $table = null;
                if (isset($_POST['id'])) {
                    $table = $_POST['id'];
                } else
                    echo '</table>';
                if (isset($_POST['id'])) {
                    $q = mysqli_query($con,"SELECT * FROM `" . $table."` HAVING day LIKE '%o'");
                    $qq = mysqli_query($con,"SELECT * FROM classroom");
                    $days = array('MONDAY', 'TUESDAY', 'WEDNESDAY', 'THURSDAY', 'FRIDAY');
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
        <a href="index.php"><button class="btn btn-primary" name="DONE">DONE</button></a>
                <?php
                    $sign = "TIMETABLE MANAGEMENT SYSTEM, COMPUTER SCIENCE & ENGINEERING DEPARTMENT";
                    echo "<div style='margin-left: 10px' align='center'>" . "<strong>" . $sign . "<br></strong></div>";
                }
                
                ?>
    </div>
</div>
    <br>

        <?php include 'include/footer.php'; 

            }
                }?>

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