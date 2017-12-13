<?php function set_header($id) { ?>
  <!DOCTYPE html>
  <html lang="en-US">
    <head>
      <title>To-Do</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png"/>
      <link href="css/common_header_style.css" rel="stylesheet">
      <link href="css/categories_themes.css" rel="stylesheet">
      <link href="css/single_list_layout.css" rel="stylesheet">
      <link href="css/single_project_layout.css" rel="stylesheet">
      <link href="css/main_page_style.css" rel="stylesheet">
      <link href="css/login_style.css" rel="stylesheet">
      <link href="css/edit_profile.css" rel="stylesheet">
      <link href="css/common_footer_style.css" rel="stylesheet">
      <link href="css/utils.css" rel="stylesheet">
      <link href="css/register.css" rel="stylesheet">
        <link href="css/allProjects_page_style.css" rel="stylesheet">
      <link href="css/media.css" rel="stylesheet">
      <script src="scripts/complete_item.js" defer></script>
      <script src="scripts/add_item.js" defer></script>
      <script src="scripts/add_list.js" defer></script>
      <script src="scripts/countries.js" defer></script>
      <script src="scripts/invite_to_project.js" defer></script>
      <script src="scripts/notify.js" defer></script>
      <script src="scripts/toggle_views.js" defer></script>
      <script src="scripts/close_popup.js" defer></script>
      <script src="scripts/toggle_switch.js" defer></script>
      <script src="scripts/set_default_dates.js" defer></script>
      <script src="scripts/first_input.js" defer></script>
      <script src="scripts/assign_user.js" defer></script>
      <script src="scripts/popup_date_max.js" defer></script>
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
