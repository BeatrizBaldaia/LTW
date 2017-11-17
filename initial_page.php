<?php
  include_once('includes/init.php');

  if(!isset($_SESSION['username'])){
    header('Location: login.php');
    die; 
  }
  include('templates/common/header.php');
  include('templates/lists/list.php');
  include('templates/common/footer.php');
?>
