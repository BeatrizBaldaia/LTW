
    <div id="user">
      <?php if (isset($_SESSION['username']) && $_SESSION['username'] != '') { ?>
          <h6><?=$_SESSION['username']?></h6>
          <img src="images/users/<?=$_SESSION['username']?>.png" alt="Profile Picture">
          <a href="action_logout.php">Logout</a>
      <?php } else { ?>
        <h1>Login</h1>
        <form action="action_login.php" method="post">
          <label>
            Username <input type="text" placeholder="username" name="username">
          </label>
          <label>
            Password <input type="password" placeholder="password" name="password">
          </label>
          <div>
            <input type="submit" value="Login">
            <a href="register.php">Register</a>
          </div>
        </form>
      <?php } ?>
    </div>
