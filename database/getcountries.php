<?php

  $db = new PDO('sqlite:list.db');
  $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $dbPRAGMA = $db->prepare('PRAGMA foreign_keys=ON;');
  $dbPRAGMA->execute();

  $name = $_GET['name'];

  // Get the countries that start with $name
  $stmt = $db->prepare("SELECT * FROM countries WHERE upper(name) LIKE upper(?) LIMIT 10");
  $stmt->execute(array("$name%"));
  $countries = $stmt->fetchAll();

  // JSON encode them
  echo json_encode($countries);
?>
