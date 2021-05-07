<?php
session_start();
?>

<?php
$cookie_name="user";
$cookie_value="jobfernandez";
setcookie($cookie_name,$cookie_value,time()+86400);
?>

<?php
$expireAfter = 5;
if(isset($_SESSION['last_action']))
{
    $secondsInactive = time() - $_SESSION['last_action'];
    $expireAfterSeconds = $expireAfter * 60;
    if($secondsInactive >= $expireAfterSeconds)
    {
        session_unset();
        session_destroy();
    }
    
}
$_SESSION['last_action'] = time();
?>
<?php
        $unixTime = time();
        date_default_timezone_set("asia/calcutta");
        $last_time=date("r", $unixTime);
        echo "The last time you are online is"."  ".$last_time;
        echo "<br><br>";
        //echo "The time is ".date("h:i:sa");
        ?>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
            if (!empty($_POST["email"])) {
                $email=$_POST["email"];
        $email1 = filter_var($email,FILTER_SANITIZE_EMAIL);
        if (filter_var($email1, FILTER_VALIDATE_EMAIL) === false) { 
          echo("$email1 is a valid mail");
          echo "<br>";
        } else {
          echo("$email1 is not a valid mail");
          echo "<br>";
        }
    }
    else{
        echo "Please enter email id in the textbox provided!!";
    }
}
        ?>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
if ($_FILES['photo']["size"] > 200000) {
  echo "Sorry, your file is too large.";
  $uploadOk = 0;
}
  else{
      echo "please upload image";
  }
}

?>
