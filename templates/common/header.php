<!DOCTYPE html>
<html lang="en-US">
  <head>
    <title>To-Do</title>    
    <meta charset="UTF-8">
    <link href="css/style.css" rel="stylesheet">
  </head>
  <body>
    <header>
      <h1>To-Do Lists</h1>
      <h2>Organize your life!</h2>
      <!--<img src="images/site/logo.jpg" alt="TO-DO LOGO"> -->
      <div id="signup">
	<?php
	  if(isset($_SESSION['username'])) { ?>
	    <a href="action_logout.php">Logout</a>
	<? }else { ?>
          <a href="register.php">Register</a>
          <a href="login.php">Login</a>
        <?php } ?>
      </div>
    </header>
