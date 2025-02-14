<?php
require 'include/connection.php';

/**Class to store subject details**/
class Subject
{
    public $code; //Subject code
    public $classes = 0; //No. of classes
    public $semester; //semester of subject
    public $aliasA; //alias for subject teacher
    public $aliasA2; //alias for subject teacher2 (only for practical subjects)
    public $subjectteacherA; //faculty number of teacher1
    public $subjectteacherA2; //faculty number of teacher2
    
    public $aliasB; //alias for subject teacher
    public $aliasB2; //alias for subject teacher2 (only for practical subjects)
    public $subjectteacherB; //faculty number of teacher1
    public $subjectteacherB2; //faculty number of teacher2
    
}

/**Class to store teachers details**/
class Teacher
{
    public $id; //faculty number
    public $days = array(); //schedule
    public $classroom_names = array(); //classroom names
}

$subjectslotsA = array(); //subjects slots for all semesters
$aliasslotsA = array(); //alias slots corresponding to each subject
$subjectslotsB = array(); //subjects slots for all semesters
$aliasslotsB = array(); //alias slots corresponding to each subject

$query = mysqli_query($con, "SELECT * FROM subjects");
$subjectsA[] = new Subject(); //to store theory subjects
$subjectsB[] = new Subject(); //to store theory subjects


/**Fetching teachers and saving into teachers array*/
$query = mysqli_query($con, "SELECT * FROM teachers");

$teachers[] = new Teacher();
$count = 0;
while ($row = mysqli_fetch_assoc($query)) {
    $temp = new Teacher();
    $temp->id = $row['facultyno'];
    $teachers[$count++] = $temp;
}
$teachers_count = $count;



for($i=3;$i<9;$i+=1){
    $x=0;
    $q = mysqli_query($con, "SELECT * FROM subjects WHERE type='LAB' AND semester=$i");
    
    while($row = mysqli_fetch_assoc($q)){
        
    $temp = new Subject();
    $temp->subjectteacherA = $row['allotedtoA'];
    $temp->subjectteacherA2 = $row['allotedtoA2'];
    
    $tindex1=0;
    $tindex2=0;
    for ($z = 0; $z < $teachers_count; $z++) {//teachers loop
        if ($teachers[$z]->id == $temp->subjectteacherA) {
            $tindex1 = $z;
            break;
        }
    }
    for ($z = 0; $z < $teachers_count; $z++) {//teachers loop
        if ($teachers[$z]->id == $temp->subjectteacherA2) {
            $tindex2 = $z;
            break;
        }
    }
    for($d=0;$d<4;$d++){
        
            if($d%2==0){
                $subjectslotsA[$i][$d][2] = "Practical";
                $aliasslotsA[$i][$d][2][0] = '-';
                $teachers[$tindex1]->days[$i % 2][$d][2] = $row['sname'];
                $teachers[$tindex1]->classroom_names[$i % 2][$d][2] = "LAB";
                
                $subjectslotsA[$i][$d][3] = "Practical";
                $aliasslotsA[$i][$d][3][0] = '-';
                $teachers[$tindex1]->days[$i % 2][$d][3] = $row['sname'];
                $teachers[$tindex1]->classroom_names[$i % 2][$d][3] = "LAB";
            }
            else{
                $subjectslotsA[$i][$d][5] = "Practical";
                $aliasslotsA[$i][$d][5][0] = '-';
                $teachers[$tindex2]->days[$i % 2][$d][5] = $row['sname'];
                $teachers[$tindex2]->classroom_names[$i % 2][$d][5] = "LAB";
                
                $subjectslotsA[$i][$d][4] = "Practical";
                $aliasslotsA[$i][$d][4][0] = '-';
                $teachers[$tindex2]->days[$i % 2][$d][4] = $row['sname'];
                $teachers[$tindex2]->classroom_names[$i % 2][$d][4] = "LAB";
            }
        }
        $x++;
    }
}



for($i=3;$i<9;$i+=1){
    $x=0;
    $q = mysqli_query($con, "SELECT * FROM subjects WHERE type='LAB' AND semester=$i");
    
    while($row = mysqli_fetch_assoc($q)){
        
        $temp = new Subject();
        $temp->subjectteacherB = $row['allotedtoB'];
        $temp->subjectteacherB2 = $row['allotedtoB2'];
    
        $tindex1=0;
        $tindex2=0;
        for ($z = 0; $z < $teachers_count; $z++) {//teachers loop
            if ($teachers[$z]->id == $temp->subjectteacherB) {
                $tindex1 = $z;
                break;
            }
        }
        for ($z = 0; $z < $teachers_count; $z++) {//teachers loop
            if ($teachers[$z]->id == $temp->subjectteacherB2) {
                $tindex2 = $z;
                break;
            }
        }
        for($d=0;$d<4;$d++){
            if($d%2==1){
                $subjectslotsB[$i][$d][2] = "Practical";
                $aliasslotsB[$i][$d][2][0] = '-';
                $teachers[$tindex1]->days[$i % 2][$d][2] = $row['sname'];
                $teachers[$tindex1]->classroom_names[$i % 2][$d][2] = "LAB";
                
                $subjectslotsB[$i][$d][3] = "Practical";
                $aliasslotsB[$i][$d][3][0] = '-';
                $teachers[$tindex1]->days[$i % 2][$d][3] = $row['sname'];
                $teachers[$tindex1]->classroom_names[$i % 2][$d][3] = "LAB";
            }
            else{
                $subjectslotsB[$i][$d][4] = "Practical";
                $aliasslotsB[$i][$d][4][0] = '-';
                $teachers[$tindex2]->days[$i % 2][$d][4] = $row['sname'];
                $teachers[$tindex2]->classroom_names[$i % 2][$d][4] = "LAB";
                
                $subjectslotsB[$i][$d][5] = "Practical";
                $aliasslotsB[$i][$d][5][0] = '-';
                $teachers[$tindex2]->days[$i % 2][$d][5] = $row['sname'];
                $teachers[$tindex2]->classroom_names[$i % 2][$d][5] = "LAB";
            }
        }
        $x++;
    }
}


$query = mysqli_query($con, "SELECT * FROM subjects");
$count = 0;

/** fetching theory subjects and saving in subjects array*/
while ($row = mysqli_fetch_assoc($query)) {
    if ($row['type'] == 'LAB')
        continue;
    $temp = new Subject();
    $temp->code = $row['sname'];
    $temp->semester = $row['semester'];
    $temp->subjectteacherA = $row['allotedtoA'];
    if (isset($temp->subjectteacherA)) {
        $teacheralias_query = mysqli_query($con,
            "SELECT * FROM teachers WHERE facultyno='$temp->subjectteacherA'");
        $row = mysqli_fetch_assoc($teacheralias_query);
        $temp->aliasA = $row['alias'];
    }
    $subjectsA[$count++] = $temp;
}
$subjects_count = $count;


$r = -1;
/** Generating timetable for theory courses, with maximum class for each subject equal to 4 */
for ($I = 0; $I < $subjects_count * 4; $I++) { //allsubject and alloting it in week
    $i = $I % $subjects_count;
    $sem = $subjectsA[$i]->semester;
    $yr = ($sem + 1) / 2;
    $y = intval($yr);
    $year = $y."A";
    $classroom_query = mysqli_query($con,
        "SELECT name FROM classroom WHERE status='$year'");
    $row = mysqli_fetch_assoc($classroom_query);
    $classroom = $row['name'];
    for ($j = 0; $j < 20; $j++) {
        $subject_teacher;
        for ($z = 0; $z < $teachers_count; $z++) {//teachers loop
            if ($teachers[$z]->id == $subjectsA[$i]->subjectteacherA) {
                $tindex = $z;
                break;
            }
        }
        if ($j % 5 == 0)
            $r++;
        if (isset($subjectslotsA[$sem][$r % 5][$j % 6])) {
            //check if subjectslot is empty
            continue;
        } else if (isset($teachers[$tindex]->days[$sem % 2][$r % 5][$j % 6])) {
            //check if subject teacher is free
            continue;
        } else {
            //check if existing in same day
            $already = false;
            for ($z = 0; $z < 6; $z++) {
                if (isset($subjectslotsA[$sem][$r % 5][$z])) {
                    if ($z == ($j % 6)) {
                        continue;
                    }
                    if ($subjectslotsA[$sem][$r % 5][$z] == $subjectsA[$i]->code) {
                        $already = true;
                    }
                }
            }
            if ($already) {
                continue;
            }
            // set subject
            $subjectsA[$i]->classes++;
            $subjectslotsA[$sem][$r % 5][$j % 6] = $subjectsA[$i]->code;
            $aliasslotsA[$sem][$r % 5][$j % 6][0] = $subjectsA[$i]->aliasA;
            $teachers[$tindex]->days[$sem % 2][$r % 5][$j % 6] = $subjectsA[$i]->code;
            $teachers[$tindex]->classroom_names[$sem % 2][$r % 5][$j % 6] = $classroom;
            break;
        }
    }
}
/**********************check for empty slots in semester's timetable*******************************/
for ($i = 3; $i < 9; $i += 1) {
    for ($k = 0; $k < 5; $k++) {
        for ($j = 0; $j < 6; $j++) {

            if (isset($subjectslotsA[$i][$k][$j % 6])) {
            } else {
                $subjectslotsA[$i][$k][$j % 6] = "-";
                $aliasslotsA[$i][$k][$j % 6][0] = "-";
            }

        }
    }
}


$query = mysqli_query($con, "SELECT * FROM subjects");
$count = 0;
/** fetching theory subjects and saving in subjects array*/
while ($row = mysqli_fetch_assoc($query)) {
    if ($row['type'] == 'LAB')
        continue;
    $temp = new Subject();
    $temp->code = $row['sname'];
    $temp->semester = $row['semester'];
    $temp->subjectteacherB = $row['allotedtoB'];
    if (isset($temp->subjectteacherB)) {
        $teacheralias_query = mysqli_query($con,
            "SELECT * FROM teachers WHERE facultyno='$temp->subjectteacherB'");
        $row = mysqli_fetch_assoc($teacheralias_query);
        $temp->aliasB = $row['alias'];
    }
    $subjectsB[$count++] = $temp;
}
$subjects_count = $count;


$r = -1;
/** Generating timetable for theory courses, with maximum class for each subject equal to 4 */
for ($I = 0; $I < $subjects_count * 4; $I++) { //allsubject and alloting it in week
    $i = $I % $subjects_count;
    $sem = $subjectsB[$i]->semester;
    $yr = ($sem + 1) / 2;
    $y = intval($yr);
    $year = $y."B";
    $classroom_query = mysqli_query($con,
        "SELECT name FROM classroom WHERE status='$year'");
    $row = mysqli_fetch_assoc($classroom_query);
    $classroom = $row['name'];
    for ($j = 0; $j < 30; $j++) {//it is 6 days * 5 theory subjects a day
        $subject_teacher;
        for ($z = 0; $z < $teachers_count; $z++) {//teachers loop
            if ($teachers[$z]->id == $subjectsB[$i]->subjectteacherB) {
                $tindex = $z;
                break;
            }
        }
        if ($j % 5 == 0)
            $r++;
        if (isset($subjectslotsB[$sem][$r % 5][$j % 6])) {
            //check if subjectslot is empty
            continue;
        } else if (isset($teachers[$tindex]->days[$sem % 2][$r % 5][$j % 6])) {
            //check if subject teacher is free
            continue;
        } else {
            //check if existing in same day
            $already = false;
            for ($z = 0; $z < 6; $z++) {
                if (isset($subjectslotsB[$sem][$r % 5][$z])) {
                    if ($z == ($j % 6)) {
                        continue;
                    }
                    if ($subjectslotsB[$sem][$r % 5][$z] == $subjectsB[$i]->code) {
                        $already = true;
                    }
                }
            }
            if ($already) {
                continue;
            }
            // set subject
            $subjectsB[$i]->classes++;
            $subjectslotsB[$sem][$r % 5][$j % 6] = $subjectsB[$i]->code;
            $aliasslotsB[$sem][$r % 5][$j % 6][0] = $subjectsB[$i]->aliasB;
            $teachers[$tindex]->days[$sem % 2][$r % 5][$j % 6] = $subjectsB[$i]->code;
            $teachers[$tindex]->classroom_names[$sem % 2][$r % 5][$j % 6] = $classroom;
            break;
        }
    }
}
/**********************check for empty slots in semester's timetable*******************************/
for ($i = 3; $i < 9; $i += 1) {
    for ($k = 0; $k < 5; $k++) {
        for ($j = 0; $j < 6; $j++) {

            if (isset($subjectslotsB[$i][$k][$j % 6])) {
            } else {
                $subjectslotsB[$i][$k][$j % 6] = "-";
                $aliasslotsB[$i][$k][$j % 6][0] = "-";
            }

        }
    }
}


/**********************check for empty slots in teacher's timetable*******************************/
for ($i = 0; $i < $teachers_count; $i++) {
    for ($k = 0; $k < 5; $k++) {
        for ($j = 0; $j < 6; $j++) {

            if (isset($teachers[$i]->days[1][$k][$j])) {
            } else {
                $teachers[$i]->days[1][$k][$j] = "-";
                $teachers[$i]->classroom_names[1][$k][$j] = "-";
            }
        }
    }
}

for ($i = 0; $i < $teachers_count; $i++) {
    for ($k = 0; $k < 5; $k++) {
        for ($j = 0; $j < 6; $j++) {

            if (isset($teachers[$i]->days[0][$k][$j])) {
            } else {
                $teachers[$i]->days[0][$k][$j] = "-";
                $teachers[$i]->classroom_names[0][$k][$j] = "-";
            }
        }
    }
}



/******Saving semesters timetable into database*****/
$days = array('mondaya', 'tuesdaya', 'wednesdaya', 'thursdaya', 'fridaya');
for ($i = 3; $i < 9; $i += 1) {
    $database_name = " semester" . $i . " ";
    for ($j = 0; $j < 5; $j++) {
        $query = "UPDATE" . $database_name . " SET  period1= '" . $subjectslotsA[$i][$j][0] . "<br>" . $aliasslotsA[$i][$j][0][0] . "',
period2='" . $subjectslotsA[$i][$j][1] . "<br>" . $aliasslotsA[$i][$j][1][0] . "', 
period3='" . $subjectslotsA[$i][$j][2] . "<br>" . $aliasslotsA[$i][$j][2][0] . "',
period4='" . $subjectslotsA[$i][$j][3] . "<br>" . $aliasslotsA[$i][$j][3][0] . "',
period5='" . $subjectslotsA[$i][$j][4] . "<br>" . $aliasslotsA[$i][$j][4][0] . "',
period6='" . $subjectslotsA[$i][$j][5] . "<br>" . $aliasslotsA[$i][$j][5][0] . "'
 WHERE day='" . $days[$j] . "' ";
        $q = mysqli_query($con, $query);
    }
}
/******Saving semesters timetable into database*****/
$days = array('mondayb', 'tuesdayb', 'wednesdayb', 'thursdayb', 'fridayb');
for ($i = 3; $i < 9; $i += 1) {
    $database_name = " semester" . $i . " ";
    for ($j = 0; $j < 5; $j++) {
        $query = "UPDATE" . $database_name . " SET  period1= '" . $subjectslotsB[$i][$j][0] . "<br>" . $aliasslotsB[$i][$j][0][0] . "',
period2='" . $subjectslotsB[$i][$j][1] . "<br>" . $aliasslotsB[$i][$j][1][0] . "', 
period3='" . $subjectslotsB[$i][$j][2] . "<br>" . $aliasslotsB[$i][$j][2][0] . "',
period4='" . $subjectslotsB[$i][$j][3] . "<br>" . $aliasslotsB[$i][$j][3][0] . "',
period5='" . $subjectslotsB[$i][$j][4] . "<br>" . $aliasslotsB[$i][$j][4][0] . "',
period6='" . $subjectslotsB[$i][$j][5] . "<br>" . $aliasslotsB[$i][$j][5][0] . "'
 WHERE day='" . $days[$j] . "' ";
        $q = mysqli_query($con, $query);
    }
}

$days = array('mondayo', 'tuesdayo', 'wednesdayo', 'thursdayo', 'fridayo');
/******Saving teachers timetable into database*****/
for ($i = 0; $i < $teachers_count; $i++) {
    $database_name = $teachers[$i]->id;
    for ($j = 0; $j < 5; $j++) {
        $query = "UPDATE `" . $database_name . "` SET  period1= '" . $teachers[$i]->days[1][$j][0] . "<br>" . $teachers[$i]->classroom_names[1][$j][0] . "',
period2='" . $teachers[$i]->days[1][$j][1] . "<br>" . $teachers[$i]->classroom_names[1][$j][1] . "', 
period3='" . $teachers[$i]->days[1][$j][2] . "<br>" . $teachers[$i]->classroom_names[1][$j][2] . "',
period4='" . $teachers[$i]->days[1][$j][3] . "<br>" . $teachers[$i]->classroom_names[1][$j][3] . "',
period5='" . $teachers[$i]->days[1][$j][4] . "<br>" . $teachers[$i]->classroom_names[1][$j][4] . "',
period6='" . $teachers[$i]->days[1][$j][5] . "<br>" . $teachers[$i]->classroom_names[1][$j][5] . "'
 WHERE day='" . $days[$j] . "' ";
        $q = mysqli_query($con, $query);
    }    
}


$days = array('mondaye', 'tuesdaye', 'wednesdaye', 'thursdaye', 'fridaye');
/******Saving teachers timetable into database*****/
for ($i = 0; $i < $teachers_count; $i++) {
    $database_name = $teachers[$i]->id;
    for ($j = 0; $j < 5; $j++) {
        $query = "UPDATE `" . $database_name . "` SET  period1= '" . $teachers[$i]->days[0][$j][0] . "<br>" . $teachers[$i]->classroom_names[0][$j][0] . "',
period2='" . $teachers[$i]->days[0][$j][1] . "<br>" . $teachers[$i]->classroom_names[0][$j][1] . "', 
period3='" . $teachers[$i]->days[0][$j][2] . "<br>" . $teachers[$i]->classroom_names[0][$j][2] . "',
period4='" . $teachers[$i]->days[0][$j][3] . "<br>" . $teachers[$i]->classroom_names[0][$j][3] . "',
period5='" . $teachers[$i]->days[0][$j][4] . "<br>" . $teachers[$i]->classroom_names[0][$j][4] . "',
period6='" . $teachers[$i]->days[0][$j][5] . "<br>" . $teachers[$i]->classroom_names[0][$j][5] . "'
 WHERE day='" . $days[$j] . "' ";
        $q = mysqli_query($con, $query);
    }    
}


/******redirect back to generate timetable **/
header("Location:generatetimetable.php?success=true");



?>