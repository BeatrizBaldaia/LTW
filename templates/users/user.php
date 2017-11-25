
    <div id="login">
      <?php if (isset($_SESSION['username']) && $_SESSION['username'] != '') { ?>
          <h6><?=$_SESSION['username']?></h6>
          <img src="images/users/<?=$_SESSION['username']?>.jpeg" alt="Profile Picture">
          <a href="action_logout.php">Logout</a>
          <a href="edit_profile.php">Edit Profile</a>
      <?php } else { ?>
        <form action="action_login.php" method="post">
          <label>
            Username <input type="text" placeholder="username" name="username">
          </label>
          <label>
            Password <input type="password" placeholder="password" name="password">
          </label>
          <div>
            <input type="submit" value="Login">
            <div>
              <a class="link" href="register.php">Register</a>
            </div>  
          </div>
        </form>
      <?php } ?>
    </div>
