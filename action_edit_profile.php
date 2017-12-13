<?php

  include_once('includes/init.php');
  include_once('database/users.php');

  if (!isset($_POST['csrf']) || $_SESSION['csrf'] !== $_POST['csrf']) {
    header('Location: main_page.php');
    die;
  }

  if(!updateUserName($_SESSION['username'], $_POST['name'])){
    echo "Falhou update do nome";
    die;
  }

  if (!updateUserEmail($_SESSION['username'], $_POST['email'])) {
    echo "Falhou update do email";
    die;
  }

  if($_POST['password'] != ''){
    if (!updateUserPassword($_SESSION['username'], $_POST['password'], $_POST['check_password'])) {
      echo "Falhou update da password";
      die;
    };
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
      $username = $_SESSION['username'];
      imagejpeg($small, "images/users/$username.jpeg");
  }
  header('Location: main_page.php');
?>
