<?php
  include_once('includes/init.php');
  include_once('database/users.php');

  $user = getUser($_SESSION['username']);

  // include('templates/common/header.php');
  set_header("after_login");
  include('templates/users/edit_profile.php');
  include('templates/common/footer.php');
?>
