<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="mains.css">
  <title>PHP Form Validation</title>
</head>

<?php
function test_input($data) {
  $data = trim($data);
  $data = 
}
  //initialize variables
  $name=$email=$gender=$comment="";
  $name_err=$email_err=$gender_err=$comment_err="";

  if ($_SERVER["REQUEST_METHOD"]=="POST"){
    if (empty($_POST["name"])){
      $name_err = "Name cannot be left blank."
    }
    else {
      $name = $_POST["name"];
    }
  }

?>

<body>
  <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="POST" target="_self">
    Name: <input type="text" name="name" id="name" value=""> <br>
    Email: <input type="text" name="email" id="email" value=""> <br>
    Gender: <br>
    <input type="radio" name="gender" id="female" value="female"> Female
    <input type="radio" name="gender" id="male" value="male"> Male
    <input type="radio" name="gender" id="other" value="other"> Other<br><br>
    Comment:
    <textarea name="comment" id="comment" value="" cols="50" rows="10"></textarea>
    <input type="Submit" value="Submit" name="Submit">
  </form>
</body>
</html>