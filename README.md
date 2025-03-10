# Timetable Management System - Installation Guide (Windows)

## Software Requirements
To run this project on Windows, you need the following software installed:
1. **NetBeans IDE**
2. **WampServer**

## Installation Guide

### Installing NetBeans IDE and WampServer
- Install both **NetBeans IDE** and **WampServer** following their default installation process.

### Importing the Database in MySQL
1. Open **WampServer** and ensure it is running on **localhost**.
2. Click on **phpMyAdmin** in your web browser.
3. Log in to **MySQL** using your credentials.
4. Import the `timetable.sql` file into MySQL by navigating to **Import** in phpMyAdmin and selecting the file.

## Project Installation Guide

1. Open **NetBeans IDE** and import the project **TimetableG**.
2. Open the file: `include/connection.php`.
   - Modify the database connection details:
     ```php
     mysqli_connect("localhost", "your_mysql_username", "your_mysql_password", "timetable");
     ```
   - Replace `"your_mysql_username"` and `"your_mysql_password"` with your MySQL credentials.
3. Open `index.php`.
4. Run the project through NetBeans.

---

## Troubleshooting WampServer Issues (Windows)

### If WampServer Fails to Start (Red or Orange Icon)
1. **Check the application grid** on the right side of the taskbar.
2. **Change the port number of Apache**:
   - Right-click on **WampServer**.
   - Navigate to **Tools > Change port number for Apache**.
   - Also update the port number in **NetBeans IDE**:
     - Right-click on **TimetableG** in NetBeans > **Properties** > **Run Configuration** > Update `localhost:portnumber`.
   - Restart WampServer.

### If WampServer Still Does Not Work
3. **Change the port number for MySQL**:
   - Right-click on **WampServer** > **Tools > Change port number for MySQL**.
   - Also update the port number in **connection.php**:
     ```php
     mysqli_connect("localhost:portnumber", "your_mysql_username", "your_mysql_password", "timetable");
     ```
   - Restart WampServer.

---

## Additional Information
- **For Mac users**, XAMPP Server is required instead of WampServer.  
- Refer to the **Mac Installation Guide** for detailed instructions.

---

# Timetable Management System - Installation Guide (Mac)

## Software Requirements
To run this project on macOS, you need the following software installed:
1. **NetBeans IDE**
2. **XAMPP Server** (instead of WampServer)

## Installation Guide

### Installing NetBeans IDE and XAMPP Server
- Download and install **NetBeans IDE** following the default setup.
- Download and install **XAMPP Server** from the [official website](https://www.apachefriends.org/index.html).
- Ensure XAMPP is running.

### Importing the Database in MySQL
1. Open **XAMPP** and start **Apache** and **MySQL**.
2. Open **phpMyAdmin** in your browser by navigating to `http://localhost/phpmyadmin/`.
3. Log in to **MySQL** using your credentials.
4. Import the `timetable.sql` file into MySQL by going to the **Import** tab in phpMyAdmin.

## Project Installation Guide

1. Open **NetBeans IDE** and import the project **TimetableG**.
2. Open the file: `include/connection.php`.
   - Modify the database connection details:
     ```php
     mysqli_connect("localhost", "your_mysql_username", "your_mysql_password", "timetable");
     ```
   - Replace `"your_mysql_username"` and `"your_mysql_password"` with your MySQL credentials.
3. Open `index.php`.
4. Run the project through NetBeans.

---

## Troubleshooting XAMPP Issues (Mac)

### If Apache or MySQL Does Not Start
1. Open **XAMPP** and check for errors in the **Logs** tab.
2. **Change the port number of Apache** if necessary:
   - Open the **XAMPP Control Panel**.
   - Click **Config** next to Apache and open `httpd.conf`.
   - Change the line `Listen 80` to another available port (e.g., `Listen 8080`).
   - Restart Apache.
3. **Change the MySQL port** if necessary:
   - Open **Config** next to MySQL and open `my.cnf` or `my.ini`.
   - Change the `port=3306` line to another port (e.g., `port=3307`).
   - Restart MySQL.

### Updating Port Number in NetBeans and Project Files
- If the Apache or MySQL ports are changed, update them in:
  - **NetBeans Project Properties** > **Run Configuration** > `localhost:portnumber`
  - **connection.php**:
    ```php
    mysqli_connect("localhost:portnumber", "your_mysql_username", "your_mysql_password", "timetable");
    ```
  - Restart **XAMPP** and re-run the project.

---

This guide provides a structured installation and troubleshooting guide for **Mac users** using XAMPP instead of WampServer.
