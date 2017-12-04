<?php
  include_once('database/connection.php');

  function getLists($username) {
    global $db;
    $stmt = $db->prepare('SELECT * FROM lists WHERE (username = ?) ORDER BY dateDue');
    $stmt->execute(array($username));
    return $stmt->fetchAll();
  }

  function getListById($id) {
    global $db;
    $stmt = $db->prepare('SELECT * FROM lists WHERE (id = ?)');
    $stmt->execute(array($id));
    return $stmt->fetch();
  }

  function getItems($id_list) {
    global $db;
    $stmt = $db->prepare('SELECT * FROM items WHERE (id_lists = ?)');
    $stmt->execute(array($id_list));
    return $stmt->fetchAll();
  }

  function markItem($id, $complete) {
    global $db;
    $stmt = $db->prepare('UPDATE items SET complet = ? WHERE (id = ?)');
    $value = 0;
    if($complete == 'true'){
      $value = 1;
    }
    $stmt->execute(array($value, $id));
    return;
  }

  function addItem($list, $itemName) {
    global $db;
    $stmt = $db->prepare('INSERT INTO items (name, id_lists) VALUES (?,?);');
    if(!$stmt->execute(array($itemName, $list))){
      //TODO ERRO
      return false;
    }
    return $db->lastInsertId();
  }
  function getItemById($id){
    global $db;
    $stmt = $db->prepare('SELECT * FROM items WHERE (id = ?)');
    $stmt->execute(array($id));
    return $stmt->fetch();
  }
  function addList($username, $name, $category, $dateDue){
    global $db;
    $stmt = $db->prepare('INSERT INTO lists (username, name, category, dateDue) VALUES (?,?,?,?);');
    if(!$stmt->execute(array($username, $name, $category, $dateDue))){
      //TODO ERRO
      return false;
    }
    return $db->lastInsertId();
  }

  function deleteList($id) {
    global $db;
    $stmt = $db->prepare('DELETE FROM lists WHERE id = ?;');
    return $stmt->execute(array($id));
  }

  function getCategory($id) {
    global $db;
    $cat = $db->prepare('SELECT categories.name AS cat FROM categories WHERE categories.id = ?');
    $cat->execute(array($id));
    return $cat->fetch();
  }

  function getCategories() {
    global $db;
    $stmt = $db->prepare('SELECT id, name FROM categories');
    $stmt->execute();
    return $stmt->fetchAll();
  }
?>
