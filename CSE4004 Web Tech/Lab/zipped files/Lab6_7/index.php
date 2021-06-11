<!DOCTYPE HTML>
<html>
<head>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="mains.css">
  <title>PHP Form Validation</title>
</head>

<?php

  define ("BR","<BR>");

 
  function test_input($data) {

    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }
  
  $name=$email=$gender=$comment=$website="";
  $name_err=$email_err=$gender_err=$comment_err=$website_err="";

  
  if ($_SERVER["REQUEST_METHOD"]=="POST") {
    if (empty($_POST["name"])) {
      $name_err = "Name cannot be left blank.";
    }
    else {
      $name = test_input($_POST["name"]);
      
      if (!preg_match("/^[a-zA-z ]*$/",$name)) {
        $name_err = "Name is not in valid format, can contain only letters.";
      }
    }
    if (empty($_POST["comment"])) 
           {
              $describeErr = "description is required";
            } 
    
           else {
          $describe = $_POST["comment"];

        
            if(preg_match("/native/i",$_POST["comment"]))
       {
           echo "native is there";
    
        }
     
        else
      {
        echo "native is not there";
        }

    if (empty($_POST["email"])) {
      $email_err = "Email cannot be left blank.";
    }
    else {
      $email = test_input($_POST["email"]);
      if (!filter_var($email,FILTER_VALIDATE_EMAIL)){
        $email_err = "Email format is not correct.";
      }
    }
    if (!empty($_POST["website"])) {
      $website = test_input($_POST["website"]);

     if (!filter_var($website,FILTER_VALIDATE_URL)){
        $website_err = "Website format is not correct.";
      }

    }
    if (!empty($_POST["comment"])) {
      $comment = test_input($_POST["comment"]);
    }
    if (!empty($_POST["gender"])) {
      $gender = test_input($_POST["gender"]);
    }
    

  }
 ?>
<body>
  <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="POST" target="_self">

    Name: <input type="text" name="name" id="name" value="<?php echo $name; ?>"> <br>
    <span style="color:red"> <?php echo $name_err; ?></span><br>
    Email:<input type = "text" name="email" id="email" value="<?php echo $email; ?>"><br>
    <span style="color:red"> <?php echo $email_err; ?></span><br>
    Website:<input type = "text" name="website" id="website" value="<?php echo $website; ?>"><br>
    <span style="color:red"> <?php echo $website_err; ?></span><br>

    Gender:<br>
    <input type = "radio" name="gender" id="female" value="female" <?php if ($gender=="female") {echo "checked";} ?> >Female
    <input type = "radio" name="gender" id="male" value="male" <?php if ($gender=="male") {echo "checked";} ?>>Male
    <input type = "radio" name="gender" id="other" value="other" <?php if ($gender=="other") {echo "checked";} ?>>other<br><br>
    <span style="color:red"> <?php echo $gender_err; ?></span><br>
    Comment:
    <textarea name="comment" id="comment" value="" cols="50" rows="10"><?php echo $comment; ?></textarea> <br><br><br>
    <span style="color:red"> <?php echo $comment_err; ?></span><br>
    <input type="Submit" value="Submit" name="Submit">

  </form>

  <?php

   if (($_SERVER["REQUEST_METHOD"]=="POST")
        and ($name_err=="" and $email_err=="" and $website_err=="" and $gender_err=="" and $comment_err=="")){
     echo BR.BR.BR.'Submission Successful: '.BR.BR;
     echo 'Name: '.$name.BR;
     echo 'E-mail: '.$email.BR;
     echo 'Portal: '.$website.BR;
     echo 'Gender: '.$gender.BR;
     echo 'Comment: '.$comment.BR;

   }

   ?>

</body>

</html>
