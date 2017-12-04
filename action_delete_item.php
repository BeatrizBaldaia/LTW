<?php

  include_once('includes/init.php');

  if (!isset($_GET['csrf']) || $_SESSION['csrf'] !== $_GET['csrf']) {
    header('Location: main_page.php');
    die;
  }

  if (!isset($_SESSION['username']) || !isset($_GET['item_id']) || !isset($_GET['list_id'])) {
    header('Location: main_page.php');
    die;
  }

  include_once('database/lists.php');

  if (!deleteItem($_GET['item_id'])) {
    //ERROR didnot deleteList
    die;
  }

  header('Location: main_page_to-do_list.php?id_list='.$_GET['list_id']);
?>
