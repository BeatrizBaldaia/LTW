<?php
  include_once('includes/init.php');

  if((!isset($_SESSION['username'])) || (!isset($_GET['id_list']))){
    header('Location: main_page.php');
    die;
  }
  include_once('database/lists.php');

  $list = getListById($_GET['id_list']);

  set_header("after_login " . getCategory($list['category'])['cat']);
  include('templates/lists/main_page_to-do_list.php');
  include('templates/common/footer.php');
?>
