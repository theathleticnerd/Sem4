<?php
session_start();
define('DB SERVER', 'localhost');
define('DB_USER', "root");
define('DB_PASS','');
define('DB_NAME', 'sdbase');
$con= mysqli_connect();
if (mysqli_connect_errno())
{
echo "Failed to connect to MYSQL: ".mysqli_connect_error();
}
$email=$_POST["user"];
$password=$_POST["pass"];
$query=mysqli_query($con, "SELECT * FROM 'student' WHERE
emailid='$email' and password= '$password' ");
$num=mysqli_fetch_array($query);
if($num > 0)
{
$_SESSION['login']=$_POST['emailid'];
$_SESSION[ 'rollnumber']=$num['rollnumber'];
$_SESSION['name']=$num['name'];
$_SESSION['DOB']=$num['DOB'];
$_SESSION['branch']=$num['branch'];
$_SESSION['year']=$num['year'];
$_SESSION['emailid']=$num['emailid'];
$_SESSION['password']=$num['password'];
header("location:DETAILS.php");
exit;
}
else{
$_SESSION['errmsg']="Invaild Emailid or Password";
header("location:LOGIN.php");
exit;
}
?>