<?php
  include_once('database/connection.php');

  function correctLogin($username,$password){
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
    $stmt = $db->prepare('INSERT INTO users (username, password, name) VALUES (?,?,?);');
    return $stmt->execute(array($username, $password, $name));
  }

  function getUser($username){
    global $db;
    $stmt = $db->prepare('SELECT * FROM users WHERE username = ?');
    $stmt->execute(array($username));
    return $stmt->fetch();
  }

  function updateUserName($username, $name){
    global $db;
    $stmt = $db->prepare('UPDATE users SET name = ? WHERE username = ?');
    return $stmt->execute(array($name,$username));
  }

  function updateUserPassword($username, $password, $check){
    global $db;
    if($password != $check) return false;
    $password = sha1($password);
    $stmt = $db->prepare('UPDATE users SET password = ? WHERE username = ?');
    return $stmt->execute(array($password,$username));
  }
?>
