
      <?php if (isset($_SESSION['username']) && $_SESSION['username'] != '') { ?>
        <div id="after_login">

          <p><?=htmlentities($_SESSION['username'])?></p>
          <img src="images/users/<?=urlencode($_SESSION['username'])?>.jpeg" alt="Profile Picture" width="100" height="100">
          <a class="link" href="edit_profile.php">Edit Profile</a>
          <a class="link" href="action_logout.php">Logout</a>
        </div>
      <?php } else { ?>
      <div id="before_login">
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
      </div>
      <?php } ?>
