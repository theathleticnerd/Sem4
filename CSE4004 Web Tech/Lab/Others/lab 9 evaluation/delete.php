<?php
session_start();
$connection = mysqli_connect('localhost', 'root', '');
$select_db = mysqli_select_db($connection, 'lab_db');
$sql = "DELETE FROM marks WHERE regno='" . $_GET["Reg_no"] . "'";
if (mysqli_query($connection, $sql)) {
    echo "<script>alert('Sucessfully deleted')</script>";
    header("location:display.php");
} else {
    echo "Error deleting record: " . mysqli_error($connection);
}
mysqli_close($connection);
?>