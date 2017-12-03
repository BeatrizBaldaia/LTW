<?php
  include_once('database/connection.php');

  function correctLogin($username, $password) {
    global $db;
    $stmt = $db->prepare('SELECT password FROM users WHERE username = ?');
    $stmt->execute(array($username));
    $hash = $stmt->fetch()['password'];
    return (password_verify($password, $hash));
  }

  function usernameExists($username){
    global $db;
    $stmt = $db->prepare('SELECT * FROM users WHERE username = ?');
    $stmt->execute(array($username));
    return ($stmt->fetch() !== false);
  }

//TODO
  function registerUser($username, $name, $password, $check){
    if($password != $check) return false;
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    global $db;
    $stmt = $db->prepare('INSERT INTO users (username, password, name) VALUES (?,?,?);');
    return $stmt->execute(array($username, $hashedPassword, $name));
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
    if($password != $check) return false;
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    global $db;
    $stmt = $db->prepare('UPDATE users SET password = ? WHERE username = ?');
    return $stmt->execute(array($hashedPassword,$username));
  }
?>
