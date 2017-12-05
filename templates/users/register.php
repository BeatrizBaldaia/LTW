    <section id="register">
      <h1>Register</h1>
      <form action="action_register.php" method="post" enctype="multipart/form-data">
        <label>
          Name <input type="text" name="name" required="required">
        </label><br/>
        <label>
          Username <input type="text" name="username" required="required">
        </label><br/>
        <label>
          Password <input type="password" name="password" required="required">
        </label><br/>
		    <label>
          Confirm Password <input type="password" name="check_password" required="required">
        </label><br/>
        <label>Country
          <input list="countries" name="country">
          <datalist id="countries">
          </datalist>
        </label><br/>
        <label>Profile picture
          <input type="file" name="profile_picture" required="required">
        </label><br/>
        <input type="submit" value="Register">
      </form>
    </section>
