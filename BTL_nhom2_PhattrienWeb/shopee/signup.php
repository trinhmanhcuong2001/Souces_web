<?php
session_start();
include("connection.php")
include("function.php");
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
	//somthing was posted
	$username= $_POST['user_name'];
	$password= $_POST['password'];
	if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
	{
		//save to db
		$user_id = random_num(20);
		$query = "insert into users (user_id,user_id,password) values ('$user_id','$user_id','$password')";
		mysqli_query($con,$query);
		header("Location:login.php");
		die;
	}else{
		echo "Please enter some valid info";
	}
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Signup</title>
</head>
<body>
<style type="text/css">
</style>
<div id="box">
<form method="post">
<div style="font-size:20px; margin:10px; color:white;">Login</div>
<input id="text"type="text" name"user_name"><br><br>
<input id="text" type="password" name="password"><br><br>
<input id="button" type="submit" value="Login"><br><br>
<a href="Login.php">Login</a><br><br>
</form>
</div>
</body>
</html>
