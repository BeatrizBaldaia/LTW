    <!-- <section id="user">
      <h1>Login</h1>
      <form action="action_login.php" method="post">
        <label>
          Username <input type="text" name="username">
        </label>
        <label>
          Password <input type="password" name="password">
        </label>
        <input type="submit" value="Login">
      </form>
    </section> -->


    <div id="user">
      <?php if (isset($_SESSION['username']) && $_SESSION['username'] != '') { ?>
        <form action="action_logout.php" method="post">
          <a href="register.php"><?=$_SESSION['username']?></a>
          <input type="submit" value="Logout">
        </form>
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
