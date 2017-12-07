<?php function set_header($id) { ?>
  <!DOCTYPE html>
  <html lang="en-US">
    <head>
      <title>To-Do</title>
      <meta charset="UTF-8">

      <link href="css/common_header_style.css" rel="stylesheet">
      <link href="css/categories_themes.css" rel="stylesheet">
      <link href="css/single_list_layout.css" rel="stylesheet">
      <link href="css/main_page_style.css" rel="stylesheet">
      <link href="css/login_style.css" rel="stylesheet">
      <link href="css/edit_profile.css" rel="stylesheet">
      <link href="css/common_footer_style.css" rel="stylesheet">
      <link href="css/utils.css" rel="stylesheet">
      <link href="css/register.css" rel="stylesheet">
      <script src="scripts/complete_item.js" defer></script>
      <script src="scripts/add_item.js" defer></script>
      <script src="scripts/countries.js" defer></script>
    </head>
    <body class="<?=$id?>">
      <header class="<?=$id?>">
        <div class="<?=$id?>">
          <a href="main_page.php"><h1>To-Do Lists</h1></a>
          <h2>Organize your life!</h2>
        </div>
      </header>
      <?php include_once('templates/users/user.php'); ?>
<?php } ?>
