<?php
  include_once('includes/init.php');

  if((!isset($_SESSION['username'])) || (!isset($_POST['item'])) || (!isset($_POST['list'])) || (!isset($_POST['priority']))){
    header('Location: main_page.php');
    die;
  }

  include_once('database/lists.php');

  if(($id = addItem($_POST['list'], $_POST['item'], $_POST['priority'])) == false){
    die;
  }

  echo json_encode(getItemById($id));

?>
