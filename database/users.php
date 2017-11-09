<?php
  include_once('database/connection.php');
  
  function userExists($username,$password){
    global $db;
    $stmt = $db->prepare('SELECT * FROM users WHERE (username = ? AND password = ?)');
    $stmt->execute(array($username, $password));
    return ($stmt->fetch() !== false);
  }
  
  function usernameExists($username){
    global $db;
    $stmt = $db->prepare('SELECT * FROM users WHERE username = ?');
    $stmt->execute(array($username));
    return ($stmt->fetch() !== false);
  }
  
//TODO 
  function registerUser($username, $name, $password, $check){
    global $db;
    if($password != $check) return false;
    $password = sha1($password);
    $stmt = $db->prepare('INSERT INTO users (username, password, name)
VALUES (?,?,?);');
    return $stmt->execute(array($username, $password, $name));
  }
?>
