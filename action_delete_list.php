<?php

  include_once('includes/init.php');

  if((!isset($_SESSION['username'])) || (!isset($_GET['list_id']))){
    header('Location: initial_page.php');
    die;
  }

  include_once('database/lists.php');

  if(!deleteList($_GET['list_id'])){
    //ERROR didnot deleteList
    die;
  }

  header('Location: initial_page.php');
?>
