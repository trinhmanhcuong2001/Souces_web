<?php
session_start();
include("connection.php")
include("function.php");
$user_data= check_login($con);
?>
<!DOCTYPE html>
<html>
<head>
<title>My website</title>
</head>
<body>
<a href="logout.php">Logout</a>
<h1>Index page</h1>
<br>
Hello , <?php 
echo $user_data['user_name'];
?>
</body>
</html>