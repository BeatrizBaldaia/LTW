<?php

  include_once('includes/init.php');

  if((!isset($_SESSION['username'])) || (!isset($_GET['list_name']))){
    header('Location: main_page.php');
    die;
  }

  include_once('database/lists.php');

  if(($id = addList($_SESSION['username'],$_GET['list_name'])) == false){
    //TODO erro ao adicioane
    die;
  }
  header("Location: main_page_to-do_list.php?id_list=$id");
?>
