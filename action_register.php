<?php

  include_once('includes/init.php');
  include_once('database/users.php');

  if (usernameExists($_POST['username'])) {
    header('Location: register.php');
    //TODO avisar username ja usado
    die;
  }
  if(registerUser($_POST['username'],$_POST['name'],$_POST['password'],$_POST['check_password']))
    $_SESSION['username'] = $_POST['username'];
  else
    print("ERROR action_register");
  header('Location: initial_page.php');
?>
