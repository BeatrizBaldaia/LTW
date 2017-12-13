<?php

  include_once('includes/init.php');

  if (!isset($_GET['csrf']) || $_SESSION['csrf'] !== $_GET['csrf']) {
    header('Location: main_page.php');
    die;
  }

  if (!isset($_SESSION['username']) || !isset($_GET['project_id'])) {
    header('Location: main_page.php');
    die;
  }

  include_once('database/projects.php');

  if (!deleteProject($_GET['project_id'])) {
    //ERROR didnot deleteList
    die;
  }

  header('Location: main_page.php');
?>
