
      <?php
      const MAX_LOGIN_ATTEMPTS = 5;
      const TIMEOUT_SECONDS = 3;
      if (!isset($_SESSION['failedLoginAttempts'])) {
          $_SESSION['failedLoginAttempts'] = 0;
      }
      if (!isset($_SESSION['endTimeout'])) {
          $_SESSION['endTimeout'] = 0;
      }

      if (isset($_SESSION['username']) && $_SESSION['username'] != '') { ?>
        <div id="after_login">

          <p><?=htmlentities($_SESSION['username'])?></p>
          <div class="container">
            <img src="images/users/<?=urlencode($_SESSION['username'])?>.jpeg" alt="Profile Picture" width="100" height="100">
            <div id="overlay">
              <a class="link" href="edit_profile.php">Edit Profile</a>
            </div>
          </div>
          <a class="link" href="action_logout.php">Logout</a>
          <?php include_once('templates/lists/notify.php'); ?>
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
            <?php
            if ($_SESSION['failedLoginAttempts'] >= MAX_LOGIN_ATTEMPTS) {
                $_SESSION['endTimeout'] = time() + TIMEOUT_SECONDS;
            }
            $currentTime = time();
            if ($currentTime <= $_SESSION['endTimeout']) { ?>
                <p>Wrong username or password, try again later</p>
            <?php } else if ($_SESSION['failedLoginAttempts'] > 0) { ?>
                <p>Wrong username or password</p>
            <?php } ?>
          </div>
        </form>
      </div>
      <?php } ?>
