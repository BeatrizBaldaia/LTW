<?php

  include_once('includes/init.php');

  if(!isset($_SESSION['username'])
   || !isset($_POST['project'])
   || !isset($_POST['username'])
   || !isset($_POST['csrf'])
   || $_SESSION['csrf'] !== $_POST['csrf']) {
    // header('Location: main_page.php');
    echo 1;
    die;
  }

  if (isUserInProject($_POST['username'], $_POST['project']) || !usernameExists($_POST['username'])) {
    die;
  }

  if (!addUserToProject($_POST['username'], $_POST['project'])) {
    die;
  }

  echo json_encode($_POST['username']);

?>
