<?php
    require('include/connection.php');
    
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
        <div>
        <?php
        
            require 'include/header.php';
            ?>
        </div>
        
        <br>
        <br>
        <div align="center">
            <button type="button" id="addsubject" name="addsubject" class="btn btn-success btn-lg" data-toggle="modal" data-target="#addsubjectModal" >ADD SUBJECT</button>
        </div>
        <br>
        
        <div class="container">        
        <script>
            function deleteHandlers() {
            var table = document.getElementById("subjectstable");
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
                                window.location.href = "deletesubject.php?code=" + id;

                            }

                        };
                    };
                currentRow.cells[5].onclick = createDeleteHandler(currentRow);
            }
        }
        </script>
                
        <table id='subjectstable' class="table table-bordered table-responsive table-hover table-striped">
            <caption><strong>Subject Information </strong></caption>
            <tr>
                <th >Code</th>
                <th >Name</th>
                <th >Short Name</th>
                <th >Type</th>
                <th >Semester</th>
                <th>Action</th>
            </tr>
            <tbody>
            <?php
                if($q = mysqli_query($con,"SELECT * FROM subjects ORDER BY code ASC")){
                    while ($row = mysqli_fetch_assoc($q)) {
                        echo "<tr><td>{$row['code']}</td>
                                <td>{$row['name']}</td>
                                <td>{$row['sname']}</td>
                                <td>{$row['type']}</td>
                                <td>{$row['semester']}</td>
                                <td>
                                    <button onclick='deleteHandlers();'>Delete</button></td>
                                </tr>\n";
                    }
                    //echo "<script>deleteHandlers();</script>";
                    }
            ?>
            </tbody>
        </table>
    </div>
    <div>
        <?php    
            require 'include/footer.php';
        ?>
    </div>
            <div id="addsubjectModal" class="modal fade" role="dialog">  
            <div class="modal-dialog">    
                <div class="modal-content">  
                    <div class="modal-header" style="background-color: #000;">  
                        <button type="button" class="close" data-dismiss="modal" style="color: #ffffff;">&times;</button>  
                        <h4 class="modal-title">ADD SUBJECT</h4>  
                    </div>  
                    <div class="modal-body">
                        <form action="addsubjectFormValidation.php" method="POST">
                            <div class="form-group">
                                <input type="text" class="form-control" id="subjectcode" name="SC" placeholder="Code e.g. 3001,4002">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="subjectname" name="SN" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="sname" name="AN" placeholder="Short Name">
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="subjecttype" name="ST">
                                    <option selected disabled>Select Course Type</option>
                                    <option value="THEORY">THEORY</option>
                                    <option value="LAB">LAB</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="subjectsemester" name="SS">
                                    <option selected disabled>Select Semester</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                </select>
                            </div>
                            <div align="right" class="form-group">
                                <input type="submit" class="btn btn-default btn-primary" name="ADD" value="ADD">
                            </div>
                        </form>
                    </div>  
                </div>  
            </div>  
        </div>
    </body>
</html>
