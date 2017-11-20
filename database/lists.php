<?php
  include_once('database/connection.php');
  function getLists($username){
    global $db;
    $stmt = $db->prepare('SELECT * FROM lists WHERE (username = ?)');
    $stmt->execute(array($username));
    return $stmt->fetchAll();
  }
  function getListById($id){
    global $db;
    $stmt = $db->prepare('SELECT * FROM lists WHERE (id = ?)');
    $stmt->execute(array($id));
    return $stmt->fetch();
  }
  
  function getItems($id_list){
    global $db;
    $stmt = $db->prepare('SELECT * FROM items WHERE (id_lists = ?)');
    $stmt->execute(array($id_list));
    return $stmt->fetchAll();
  }
  
  function markItem($id, $complete){
    global $db;
    $stmt = $db->prepare('UPDATE items SET complet = ? WHERE (id = ?)');
    $value = 0;
    if($complete == 'true'){
      $value = 1;
    }
    $stmt->execute(array($value, $id));
    return;
  }


?>
