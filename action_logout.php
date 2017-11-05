<?php
  include_once('includes/init.php'); 
  include_once('database/users.php');
  session_destroy();
  header('Location: ' . $_SERVER['HTTP_REFERER']);
?>
