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
            <button type="button" id="addclass" name="addclass" class="btn btn-success btn-lg" data-toggle="modal" data-target="#addclassModal" >ADD CLASSROOM</button>
        </div>
            <br>
        
            
            <div class="container">        
    <script>
        function deleteHandlers() {
            var table = document.getElementById("classroomtable");
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
                                window.location.href = "deleteclassroom.php?class=" + id;

                            }

                        };
                    };
                currentRow.cells[1].onclick = createDeleteHandler(currentRow);
            }
        }
    </script>
                <div class="col-lg-offset-4 col-lg-4 col-lg-offset-4" width="40%">
                <table id='classroomtable' class="table table-bordered table-responsive table-hover table-striped">
        <caption><strong>Classroom Information </strong></caption>
        <tr>
            <th><div align="center">Classroom</div></th>
            
            <th><div align="center">Action</div></th>
        </tr>
        <tbody>
        <?php
        
        if($q = mysqli_query($con,
            "SELECT * FROM classroom ORDER BY name ASC")){

        while ($row = mysqli_fetch_assoc($q)) {
            echo "<tr><td><div align='center'>{$row['name']}</div></td>
                    <td><div align='center'>
                    <button onclick='deleteHandlers();'>Delete</button></div></td>
                    </tr>\n";
        }
            //echo "<script>deleteHandlers();</script>";
            }
        ?>
        </tbody>
    </table>
                </div>
</div>
            
        <div>
        <?php    
            require 'include/footer.php';
            
            ?>
        </div>
                <div id="addclassModal" class="modal fade" role="dialog">  
      <div class="modal-dialog">    
        <div class="modal-content">  
            <div class="modal-header" style="background-color: #000;">  
                <button type="button" class="close" data-dismiss="modal" style="color: #ffffff;">&times;</button>  
                <h4 class="modal-title">ADD CLASSROOM</h4>  
            </div>  
            <div class="modal-body">
                
                
                    <form action="addclassFormValidation.php" method="POST">
                    <div class="form-group">
                        <input type="text" class="form-control" id="classroomname" name="CN"
                               placeholder="C1,C2,...">
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
