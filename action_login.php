<?php

  include_once('includes/init.php');
  include_once('database/users.php');

  $_POST['password']=sha1($_POST['password']);
  if (userExists($_POST['username'], $_POST['password']))
    $_SESSION['username'] = $_POST['username'];
  header('Location: initial_page.php');
?>
