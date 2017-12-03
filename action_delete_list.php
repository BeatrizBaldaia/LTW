<?php

  include_once('includes/init.php');

  if (!isset($_GET['csrf']) || $_SESSION['csrf'] !== $_GET['csrf']) {
    header('Location: initial_page.php');
    die;
  }

  if (!isset($_SESSION['username']) || !isset($_GET['list_id'])) {
    header('Location: initial_page.php');
    die;
  }

  include_once('database/lists.php');

  if (!deleteList($_GET['list_id'])) {
    //ERROR didnot deleteList
    die;
  }

  header('Location: initial_page.php');
?>
