<?php
  include_once('includes/init.php');

  if(empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] == "off"){
    $redirect = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: ' . $redirect);
    exit();
  }

  if(!isset($_SESSION['username'])){
    header('Location: login.php');
    die;
  }

  set_header("after_login");
  include('templates/lists/main_page.php');
  include('templates/common/footer.php');
?>
