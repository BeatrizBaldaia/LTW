<?php

  include_once('includes/init.php');

  session_start();

  if(
    !isset($_SESSION['username'])
   || !isset($_POST['item'])
   || !isset($_POST['username'])
   || !isset($_POST['csrf'])
   || $_SESSION['csrf'] !== $_POST['csrf']) {
    header('Location: main_page.php');
    die;
  }

  if (!assignItemToUser($_POST['username'], $_POST['item'])) {
    die;
  }

?>
