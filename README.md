#Software Required
1. Netbeans IDE
2. Wampserver

#Installation for Netbeans IDE and Wampserver
Default Installation as other software.

#Import database in mysql
1. Open Wampserver on localhost port
2. Click phpmyadmin
3. Login to Mysql
4. Import timetable.sql file in mysql

#Project Installation Guide
1. Import the project TimetableG in netbeans IDE
2. Open include>connection.php 
	a. Change mysqli_connect("localhost", username for mysql, password for mysql, "timetable")
3. Open index.php
4. Run

#If wampserver unable to start all process i.e color is red or orange
#(Check for application grid on right side)
#Change the port number of Apache from application grid on right side of taskbar.
1. Right Click on Wampserver
2. Tools> Change port number for Apache(Also change the number in project TimetableG(Right Click)>properties>Run Configuration>localhost:portnumber)
3. Restart the server
#If still does not work
4. Tools> Change port number for MySql(Also change the number in connection.php (localhost->localhost:portnumber))
5. Restart the server



#This project was submitted before deadline.....
#Improved version was made after deadline, project is also ready with more facility and constraints which was made in lockdown.....
