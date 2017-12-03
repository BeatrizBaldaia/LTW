<?php

  include_once('includes/init.php');

  /* if ($_SESSION['csrf'] !== $_GET['csrf']) {
    header('Location: initial_page.php');
    die;
  } */

  if(!isset($_SESSION['username']) || !isset($_GET['list_name'])
      || !isset($_GET['csrf']) || $_SESSION['csrf'] !== $_GET['csrf']) {
    header('Location: initial_page.php');
    die;
  }

  include_once('database/lists.php');

  if(($id = addList($_SESSION['username'], $_GET['list_name'], $_GET['list_category_id'])) == false){
    //TODO erro ao adicioane
    die;
  }
  header("Location: list_page.php?id_list=$id");
?>
