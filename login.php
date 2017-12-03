<?php
  include_once('includes/init.php');
  include_once('database/users.php');

  if(isset($_SESSION['username'])){
    header('Location: main_page.php');
    die;
  }

  // include('templates/common/header.php');
  set_header("before_login");
  // include('templates/users/user.php');
  include('templates/common/footer.php');
?>
