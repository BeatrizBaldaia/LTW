<?php
  include_once('includes/init.php');
  include_once('database/users.php');

  if(!isset($_SESSION['username'])){
    header('Location: login.php');
    die;
  }

  $user = getUser($_SESSION['username']);

  set_header("after_login");
  include('templates/users/edit_profile.php');
  include('templates/common/footer.php');
?>
