    <section id="register">
      <h1>Register</h1>
      <?php
        if((isset($_SESSION['invalidUsername'])) && ($_SESSION['invalidUsername'] == true))
          echo "<p>That username is already used! Try a new one.</p>";
      ?>
      <form action="action_register.php" method="post" enctype="multipart/form-data">
        <label>
          Name <input type="text" name="name" required="required">
        </label><!-- <br/> -->
        <label>
          Username <input type="text" name="username" required="required">
        </label><!-- <br/> -->
        <label>
          E-mail <input type="email" name="email" required="required">
        </label><!-- <br/> -->
        <label>
          Password <input type="password" name="password" pattern=".{4,}" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters' : ''); if(this.checkValidity()) form.check_password.pattern = this.value;" required="required">
        </label><!-- <br/> -->
		    <label>
          Confirm Password <input type="password" name="check_password" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above' : '');" required="required">
        </label><!-- <br/> -->
        <label>Country
          <input list="countries" name="country">
          <datalist id="countries">
          </datalist>
        </label><!-- <br/> -->
        <label>Profile picture
          <input type="file" name="profile_picture" required="required">
        </label><!-- <br/> -->
        <input type="submit" value="Register">
      </form>
    </section>
