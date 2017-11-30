<?php function set_header($id) { ?>
  <!DOCTYPE html>
  <html lang="en-US">
    <head>
      <title>To-Do</title>
      <meta charset="UTF-8">

      <link href="css/common_header_style.css" rel="stylesheet">
      <link href="css/list_unique.css" rel="stylesheet">
      <link href="css/logged_in_style.css" rel="stylesheet">
      <link href="css/login_style.css" rel="stylesheet">
      <link href="css/edit_profile.css" rel="stylesheet">
      <link href="css/common_footer_style.css" rel="stylesheet">
      <link href="css/utils.css" rel="stylesheet">
      <link href="css/register.css" rel="stylesheet">
      <script src="scripts/complete_item.js" defer></script>
      <script src="scripts/add_item.js" defer></script>
    </head>
    <body class=<?=htmlentities($id)?>>
      <header class=<?=htmlentities($id)?>>
        <div id="info" class=<?=htmlentities($id)?>>
          <a href="initial_page.php"><h1>To-Do Lists</h1></a>
          <h2>Organize your life!</h2>
        </div>
      </header>
      <?php include_once('templates/users/user.php'); ?>
<?php } ?>
