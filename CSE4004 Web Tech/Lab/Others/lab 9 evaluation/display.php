<?php
session_start();
$connection = mysqli_connect('localhost', 'root', '');
$select_db = mysqli_select_db($connection, 'lab_db');


$sql="SELECT * FROM marks";
$result = $connection  ->query($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body> 
    <div class="insert">
    <form action="" method="post">
    <button type="submit" name="insert">insert</button>
    </form>
    <?php
    if(isset($_POST['insert']))
    {
        header("location:insert.php");
    }
    ?>
    </div>
    <table><tr>
    <th>Reg_no</th>
    <th>semester</th>
    <th>cat.no</th>
    <th>subcode</th>
    <th>marks</th></tr>
    <?php
    $i=0;
    while($row = mysqli_fetch_array($result)) {
    ?>
    <tr><td><?php echo $row["regno"]; ?></td>
    <td><?php echo $row["semester"]; ?></td>
    <td><?php echo $row["catno"]; ?></td>
    <td><?php echo $row["subcode"]; ?></td>
    <td><?php echo $row["Mark"]; ?></td>
    <td><a href="delete.php?Reg_no=<?php echo $row["regno"];?>">DELETE</a></td>
    <td><a href="update.php?Reg_no=<?php echo $row["regno"];?>">update</a></td></tr>
    <?php
	$i++;
	}
	?>
    </table>
   
</body> 
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  background-color:pink;
  position: relative;
  left:0%;
  top:40%;
}
body{
    background-color:green; 
}
.insert{
    position: relative;
    left:70%;
    top:40%;
}
</style>
</html>