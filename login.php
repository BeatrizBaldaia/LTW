<?php
  include_once('includes/init.php');
  include_once('database/users.php');

  if(isset($_SESSION['username'])){
    header('Location: main_page.php');
    die;
  }

  set_header("before_login");
  include('templates/common/footer.php');
?>
