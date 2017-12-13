<?php
  include_once('includes/init.php');

  if((!isset($_SESSION['username'])) || (!isset($_GET['id_list']))){
    header('Location: main_page.php');
    die;
  }
  include_once('database/lists.php');

  $list = getListById($_GET['id_list']);
  
  if($list['username'] != $_SESSION['username']){
    $projects_lists = getListsFromMyProjects($_SESSION['username']);
    $validList = false;
    for($i = 0; $i < count($projects_lists); $i++){
      if($projects_lists[$i]['list'] == $list['id']){
        $validList = true;
        break;
      }
    }
    if($validList == false) {
      header('Location: main_page.php');
      die;
    }
  }

  set_header("after_login " . getCategory($list['category'])['cat']);
  include('templates/lists/main_page_to-do_list.php');
  include('templates/common/footer.php');
?>
