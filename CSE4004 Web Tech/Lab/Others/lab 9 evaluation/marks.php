<?php
session_start();
$connection = mysqli_connect('localhost', 'root', '');
$select_db = mysqli_select_db($connection, 'lab_db');

if(isset($_POST['final'])){
    $semester=$_POST['semester'];
    $regno=$_POST['regno'];
    $catno=$_POST['catno'];
    $subcode=$_POST['subcode'];
    $MARK=$_POST['Mark'];
  $sql="INSERT INTO marks (regno,semester,catno,subcode,Mark) VALUES('$regno','$semester','$catno','$subcode','$MARK')";
  if($connection->query($sql)==TRUE){
    echo "<script>alert('Sucessfully recorded')</script>";
  }
  else {
    echo "INCORRECT REG.NO ";
  }

}
?>
<!doctype html>
<html>
    <head></head>
    <body>
        <h1>marks page</h1>
        <form method='post' action="">
            <h6>enter reg.no</h6>
            <input type="text" name="regno">
            <h6>semester</h6>
            <input type="text" name="semester">
            <h6>catno</h6>
            <input type="text" name="catno">
            <h6>subcode</h6>
            <input type="text" name="subcode">
            <h6>Mark</h6>
            <input type="text" name="Mark">
            <input type="submit" value="submit" name="final">
        </form>
        <form action="display.php" method="post">
        <button type="submit">display</button>
        </form>
    </body>
</html>