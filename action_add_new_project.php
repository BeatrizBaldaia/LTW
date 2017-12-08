<?php

  include_once('includes/init.php');

  if(!isset($_SESSION['username']) || !isset($_POST['list_name'])
  || !isset($_POST['project_name']) || !isset($_POST['list_category_id'])
  || !isset($_POST['proj_deadline']) || !isset($_POST['list_deadline'])
  || !isset($_POST['csrf']) || $_SESSION['csrf'] !== $_POST['csrf']) {
    header('Location: main_page.php');
    die;
  }

  if(($projectId = addProject($_POST['project_name'] ,$_SESSION['username'])) == false){
    //TODO erro ao adicioane
    die;
  }

  $listNames = $_POST['list_name'];
  $numLists = count($listNames);
  $listCategories = $_POST['list_category_id'];
  $listDeadlines = $_POST['deadline'];
  for ($i = 0; $i < $numLists; $i++) {
    $listId = addList($_SESSION['username'], $listNames[$i], $listCategories[$i], $listDeadlines[$i]);
    addListToProject($listId, $projectId);
  }

  header("Location: main_page_to-do_list.php?id_list=$listId");
?>
