    <section id="register">
      <h1>Register</h1>
      <form action="action_register.php" method="post" enctype="multipart/form-data">
        <label>
          Name <input type="text" name="name">
        </label><br/>
        <label>
          Username <input type="text" name="username">
        </label><br/>
        <label>
          Password <input type="password" name="password">
        </label><br/>
		    <label>
          Confirm Password <input type="password" name="check_password">
        </label><br/>
        <label>Profile picture:
        <input type="file" name="profile_picture">
        </label><br/>
        <input type="submit" value="Register">
      </form>
    </section>
