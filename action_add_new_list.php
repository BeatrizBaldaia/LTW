<?php

  include_once('includes/init.php');

  /* if ($_SESSION['csrf'] !== $_GET['csrf']) {
    header('Location: main_page.php');
    die;
  } */

  if(!isset($_SESSION['username']) || !isset($_POST['list_name'])
      || !isset($_POST['csrf']) || $_SESSION['csrf'] !== $_POST['csrf']) {
    header('Location: main_page.php');
    die;
  }

  include_once('database/lists.php');

  if(($id = addList($_SESSION['username'], $_POST['list_name'], $_POST['list_category_id'], $_POST['deadline'])) == false){
    //TODO erro ao adicioane
    die;
  }
  header("Location: main_page_to-do_list.php?id_list=$id");
?>
