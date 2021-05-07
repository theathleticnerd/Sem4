<?php
session_start();
$connection = mysqli_connect('localhost', 'root', '');
$select_db = mysqli_select_db($connection, 'lab_db');
if(isset($_POST['final'])){
    $name=$_POST['name'];
    $regno=$_POST['regno'];
    $degree=$_POST['degree'];
    $sql="INSERT INTO student_info (regno, fname, degree) VALUES ('$regno','$name','$degree')";
  if($connection->query($sql)==TRUE){
    echo "New record created successfully";
  }
  else {
    echo "Error: " . $sql . "<br>" . $connection->error;
  }

}
?>
<!doctype html>
<html>
    <head></head>
    <body>
        <h1>Homepage</h1>
        <form method='post' action="">
            <input type="submit" value="Logout" name="but_logout">
            <h6>enter reg.no</h6>
            <input type="text" name="regno">
            <h6>name</h6>
            <input type="text" name="name">
            <h6>degree</h6>
            <input type="text" name="degree">
            <input type="submit" value="submit" name="final">
        </form>
    </body>
</html>
