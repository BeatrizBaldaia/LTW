<section id="edit_profile">
  <h1>Edit</h1>
  <form action="action_edit_profile.php" method="post" enctype="multipart/form-data">
    <input type="hidden" name="csrf" value="<?=$_SESSION['csrf']?>">
    <label>
      Name <input type="text" name="name" value="<?=htmlentities($user['name'])?>">
    </label>
    <label>
      E-mail <input type="email" name="email" value="<?=htmlentities($user['email'])?>">
    </label>
    <label>
      Password <input type="password" name="password">
    </label>
    <label>
      Confirm Password <input type="password" name="check_password">
    </label>
    <label>Profile picture:
        <input type="file" name="profile_picture">
    </label>
    <input type="submit" value="Edit">
  </form>
</section>
