<?php
  include_once('includes/init.php');
  if(!isset($_SESSION['username'])){
    header('Location: login.php');
    die;
  }

  set_header("after_login");
  include('templates/lists/main_page.php');
  include('templates/common/footer.php');
?>
