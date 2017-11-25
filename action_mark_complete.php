<?php
  include_once('includes/init.php');

  if((!isset($_SESSION['username'])) || (!isset($_GET['id_item'])) || (!isset($_GET['complete']))){
    header('Location: initial_page.php');
    die; 
  }

  include_once('database/lists.php');
  
  markItem($_GET['id_item'], $_GET['complete']);
  
?>
