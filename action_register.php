<?php

  include_once('includes/init.php');
  include_once('database/users.php');

  if (usernameExists($_POST['username'])) {
    header('Location: register.php');
    $_SESSION['invalidUsername'] = true;
    die;
  }

  if(registerUser($_POST['username'],$_POST['name'],$_POST['password'],$_POST['check_password'], $_POST['email'], $_POST['country'])) {
    $_SESSION['username'] = $_POST['username'];
    $_SESSION['toggleState'] = 'checked';
    $_SESSION['invalidUsername'] = false;
  } else {
    print("ERROR action_register");
    die;
  }
  if(isset($_FILES['profile_picture'])){
    $type = exif_imagetype($_FILES['profile_picture']['tmp_name']);
      switch ($type) {
        case IMAGETYPE_JPEG:
          $original = imagecreatefromjpeg($_FILES['profile_picture']['tmp_name']);
          break;
        case IMAGETYPE_PNG:
          $original = imagecreatefrompng($_FILES['profile_picture']['tmp_name']);
          break;
        default:
          //TODO Not a valid type
          header('Location: main_page.php');
          die;
          break;
      }
      $width = imagesx($original);
      $height = imagesy($original);
      $square = min($width, $height);
      $small = imagecreatetruecolor(100, 100);
      imagecopyresized($small, $original,
      0, 0,
      ($width>$square)?($width-$square)/2:0, ($height>$square)?($height-$square)/2:0,
      100, 100,
      $square, $square);
      $username = $_POST['username'];
      imagejpeg($small, "images/users/$username.jpeg");
  }
  header('Location: main_page.php');
?>
