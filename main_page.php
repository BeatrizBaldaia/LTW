<?php
  include_once('includes/init.php');

  if(!isset($_SESSION['username'])){
    header('Location: login.php');
    die;
  }

  $lists = getLists($_SESSION['username']);
  $numLists = count($lists);
  $categories = getCategories();
  $projects = getProjects($_SESSION['username']);

  set_header("after_login");
  include('templates/lists/main_page.php');
  include('templates/common/footer.php');
?>
