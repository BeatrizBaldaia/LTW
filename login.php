<?php
  include_once('includes/init.php');
  include_once('database/users.php');

  if(isset($_SESSION['username'])){
    header('Location: initial_page.php');
    die;
  }

  include('templates/common/header.php');
  //include('templates/users/user.php');
  include('templates/common/footer.php');
?>
