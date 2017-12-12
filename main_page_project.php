<?php
  include_once('includes/init.php');

  if((!isset($_SESSION['username'])) || (!isset($_GET['id_project']))){
    header('Location: main_page.php');
    die;
  }

  $project = getProjectById($_GET['id_project']);

  set_header("after_login");
  include('templates/projects/main_page_projects.php');
  include('templates/common/footer.php');
?>
