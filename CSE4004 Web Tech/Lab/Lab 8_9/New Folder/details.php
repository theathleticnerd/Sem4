<html>
<head>
<title>Student Details</title>
</head>
<body>
<?php
session_start();
if(isset($_SESSION["user"]))
{
if((time()-$_SESSION[ 'last_time']) > 120)
{
header("location:LOGOUT.php");
}
else{
$_SESSION['last_time'] = time();
echo htmlentities ($_SESSION['rollnumber','name', 'DOB', 'branch',
'year','emailid']);
}
}
else{
header("location: LOGOUT.php");
}
?>
<h1><a href="LOGOUT.php">Logout</a></h1>
</body>
</html>