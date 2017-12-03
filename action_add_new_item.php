<?php
  include_once('includes/init.php');

  if((!isset($_SESSION['username'])) || (!isset($_GET['item'])) || (!isset($_GET['list']))){
    header('Location: main_page.php');
    die;
  }

  include_once('database/lists.php');

  if(($id = addItem($_GET['list'], $_GET['item'])) == false){
    //TODO erro ao adicioane
    die;
  }
  echo json_encode(getItemById($id));

?>
