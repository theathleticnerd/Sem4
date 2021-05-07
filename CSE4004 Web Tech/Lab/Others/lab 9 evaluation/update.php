<?php
session_start();
$connection = mysqli_connect('localhost', 'root', '');
$$select_db = mysqli_select_db($connection, 'lab_db');
if(count($_POST)>0) {
    mysqli_query($connection,"UPDATE marks set regno='" . $_POST['Reg_no'] . "', semester='" . $_POST['semester'] . "', catno='" . $_POST['catno'] . "', subcode='" . $_POST['subcode'] . "' ,Mark='" . $_POST['mark'] . "' WHERE regno='" . $_POST['Reg_no'] . "'");
    $message = "Record Modified Successfully";
    }
$result = mysqli_query($connection,"SELECT * FROM marks WHERE regno='" . $_GET['Reg_no'] . "'");
$row= mysqli_fetch_array($result);
?>
<html>
<head>
<title>Update Marks Data</title>
</head>
<body>
<form name="frmUser" method="post" action="">
<div><?php if(isset($message)) { echo $message; } ?>
</div>
<div style="padding-bottom:5px;">
<a href="display.php">marks list</a>
</div>
Reg_no: <br>
<input type="hidden" name="Reg_no" class="txtField" value="<?php echo $row['regno']; ?>">
<input type="text" name="Reg_no"  value="<?php echo $row['regno']; ?>">
<br>
semester <br>
<input type="text" name="semester" class="txtField" value="<?php echo $row['semester']; ?>">
<br>
cat number:<br>
<input type="text" name="catno" class="txtField" value="<?php echo $row['catno']; ?>">
<br>
subject code:<br>
<input type="text" name="subcode" class="txtField" value="<?php echo $row['subcode']; ?>">
<br>
marks:<br>
<input type="text" name="mark" class="txtField" value="<?php echo $row['Mark']; ?>">
<br>
<input type="submit" name="submit" value="Submit" class="button">

</form>
</body>
</html>
