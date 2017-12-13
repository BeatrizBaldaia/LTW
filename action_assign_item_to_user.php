<?php

  include_once('includes/init.php');

  //session_start();

  if(!isset($_SESSION['username'])
   || !isset($_POST['item'])
   || !isset($_POST['project'])
   || !isset($_POST['username'])
   || !isset($_POST['csrf'])
   || $_SESSION['csrf'] !== $_POST['csrf']) {
    header('Location: main_page.php');
    die;
  }

  if (!isUserInProject($_POST['username'], $_POST['project'])) {
    die;
  }

  if (!assignItemToUser($_POST['username'], $_POST['item'])) {
    die;
  }
  $item = getItemById($_POST['item']);
  echo json_encode($item);
?>
