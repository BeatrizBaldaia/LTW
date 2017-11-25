<?php
  include_once('includes/init.php');

  if(!isset($_SESSION['username'])){
    header('Location: login.php');
    die;
  }
  // include('templates/common/header.php');
  set_header("after_login");
  include('templates/lists/list.php');
  include('templates/common/footer.php');
?>
