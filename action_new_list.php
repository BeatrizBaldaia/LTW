<?php

  include_once('includes/init.php');

  if((!isset($_SESSION['username'])) || (!isset($_GET['list_name']))){
    header('Location: initial_page.php');
    die;
  }

  include_once('database/lists.php');

  if(($id = addList($_SESSION['username'],$_GET['list_name'])) == false){
    //TODO erro ao adicioane
    die;
  }
  header("Location: list_page.php?id_list=$id");
?>
