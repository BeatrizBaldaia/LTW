<?php
  include_once('includes/init.php');

  if((!isset($_SESSION['username'])) || (!isset($_GET['id_list']))){
    header('Location: initial_page.php');
    die;
  }
  include_once('database/lists.php');

  $list = getListById($_GET['id_list']);

  set_header("after_login_" . getCategory($list['category'])['cat']);
  include('templates/lists/list_page.php');
  include('templates/common/footer.php');
?>
