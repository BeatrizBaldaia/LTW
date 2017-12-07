<?php
  include_once('includes/init.php');

  if(!isset($_SESSION['username'])) {
    header('Location: main_page.php');
    die;
  }

  include_once('database/lists.php');

  markNotify($_SESSION['username']);

?>
