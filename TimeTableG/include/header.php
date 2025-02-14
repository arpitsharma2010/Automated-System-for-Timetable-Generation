<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <?php
                if (isset($_SESSION['user'])) {
                    ?>
            <a class="navbar-brand navbar-link" href="addteacher.php" style="align:left;">TIME TABLE MANAGEMENT SYSTEM</a>
                    <?php
                } else {
                    ?>
                    <a class="navbar-brand navbar-link" href="index.php"  style="align-self: flex-start;">TIME TABLE MANAGEMENT SYSTEM</a>
                    <?php
                    }
                    ?>
        </div>
            <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <?php
                if (isset($_SESSION['user'])) {
                    ?>
                
                    <li><a href = "addteacher.php"><span class = "glyphicon glyphicon-user"></span> Add Teacher</a></li>
                    <li><a href = "addsubject.php"><span class = "glyphicon glyphicon-book"></span> Add Subject</a></li>
                    <li><a href = "addclassroom.php"><span class = "glyphicon glyphicon-blackboard"></span> Add Classroom</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Allotment
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href=allotsubjects.php>Theory Courses</a>
                        </li>
                        <li>
                            <a href=allotpracticals.php>Practical Courses</a>
                        </li>
                        <li>
                            <a href=allotclasses.php>Classrooms</a>
                        </li>
                    </ul>
                </li>
                    <li><a href="generatetimetable.php"><span class="glyphicon glyphicon-pencil"></span> Generate</a></li>
                    <li><a href = "logout.php"><span class = "glyphicon glyphicon-log-out"></span> Logout</a></li>
                    <?php
                } else {
                    ?>
                    
                    <?php
                    }
                    ?>
            </ul>
        </div>
    </div>
</div>