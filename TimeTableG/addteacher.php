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
            <a href="#" class="btn btn-success btn-lg" data-toggle="modal" data-target="#addteacherModal" >ADD TEACHER</a>
        </div>
        <br>
        <br>
        
        <div class="container">        
            <script>
                function deleteHandlers() {
                    var table = document.getElementById("teacherstable");
                    var rows = table.getElementsByTagName("tr");
                    for (i = 0; i < rows.length; i++) {
                        var currentRow = table.rows[i];
                        //var b = currentRow.getElementsByTagName("td")[0];
                        var createDeleteHandler =
                        function (row) {
                            return function () {
                                var cell = row.getElementsByTagName("td")[0];
                                var id = cell.innerHTML;
                                var x;
                                if (confirm("Are You Sure?") == true) {
                                    window.location.href = "deleteteacher.php?facultyno=" + id;
                                }
                            };
                        };
                    currentRow.cells[6].onclick = createDeleteHandler(currentRow);
                    }
                }
            </script>
                
            <table id='teacherstable' class="table table-bordered table-responsive table-hover table-striped">
                <caption><strong>Teacher's Information </strong></caption>
                <tr>
                    <th>Faculty No</th>
                    <th>Name</th>
                    <th>Alias</th>
                    <th>Designation</th>
                    <th>Contact No.</th>
                    <th>Email ID</th>
                    <th>Action</th>
                </tr>
                <tbody>
                <?php
                    if($q = mysqli_query($con,"SELECT * FROM teachers ORDER BY facultyno ASC")){
                    while ($row = mysqli_fetch_assoc($q)) {
                    echo "<tr><td>{$row['facultyno']}</td>
                            <td>{$row['name']}</td>
                            <td>{$row['alias']}</td>
                            <td>{$row['designation']}</td>
                            <td>{$row['contact']}</td>
                            <td>{$row['email']}</td>
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
            
            <div  class="modal fade" id="addteacherModal" role="dialog">  
            <div class="modal-dialog">    
                <div class="modal-content">  
                    <div class="modal-header" style="background-color: #000;">  
                        <button type="button" class="close" data-dismiss="modal" style="color: #ffffff;">&times;</button>  
                        <h4 class="modal-title">ADD TEACHER</h4>  
                    </div>  
                    <div class="modal-body">
                        <form action="addteacherFormValidation.php" method="POST">
                            <div class="form-group">
                                <input type="text" class="form-control" id="facultyno" name="FN" placeholder="Faculty No." required maxlength="5">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="teachername" name="TN" placeholder="Name" required maxlength="50">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="alias_name" name="AL" placeholder="Alias" required maxlength="3">
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="designation" name="TD" required>
                                    <option selected disabled>Select Designation</option>
                                    <option value="Dr.">Dr.</option>
                                    <option value="Professor">Professor</option>
                                    <option value="Assistant Professor">Assistant Professor</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="teachercontactnumber" name="TC" placeholder="Mobile No." maxlength="10">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="teacheremailid" name="TE" placeholder="Email" maxlength="30"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
                            </div>
                            <div align="right">
                                <input type="submit" class="btn btn-default" name="ADD" value="ADD">
                            </div>
                        </form>
                    </div>  
                </div>  
            </div>  
        </div>
            
    </body>
</html>
