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
            <div class="container">
            <div class="col-lg-offset-3 col-lg-6">
                <div class="panel panel-group" style="border: solid black 1px;">
                    <div class="panel-heading"><h2>Login</h2></div>
                    <div class="panel-body">
                        <form action="adminValidation.php" method="POST">
                            <div class="form-group">
                                <label for="adminname">Username</label>
                                <input type="text" class="form-control" id="adminname" name="UN" placeholder="Username" required="true">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="PASS" placeholder="Password" required="true">
                            </div>
                            <div align="center">
                                <input type="submit" class="btn btn-primary" name="LOGIN" value="LOGIN">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
            <hr>
                <br>
        <div class="container">
            <div class="col-lg-offset-3 col-lg-6">
                <div class="panel panel-group" style="border: solid black 1px;">
                    <div class="panel-heading"><h2>Facultywise Timetable</h2></div>
                    <div class="panel-body">
                        <form action="faculty.php" method="POST">
                            <div class="form-group">
                                <label for="facultyid">Faculty ID:</label>
                                <input type="number" class="form-control" id="facultyname" name="id" placeholder="Faculty ID" required="true">
                            </div>
                           
                                <label for="semester">Semester:</label></br>
                <input type="radio" class="radio-inline" id="evenodd" name="semester" value="even" required> Even</br>
                                    <input type="radio" class="radio-inline" id="evenodd" name="semester" value="odd" required> Odd
                            
                            <div align="center">
                                <input type="submit" class="btn btn-primary" name="Submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
                            
        
        <div>
        <?php    
            require 'include/footer.php';
            
            ?>
        </div>
    </body>
</html>
