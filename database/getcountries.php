<?php

// TODO: Shouldn't be remaking PDO but wtf how
  $dbCountries = new PDO('sqlite:countries.db');
  $dbCountries->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
  $dbCountries->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $dbPRAGMA = $dbCountries->prepare('PRAGMA foreign_keys=ON;');
  $dbPRAGMA->execute();

  $name = $_GET['name'];

  // Get the countries that start with $name
  $stmt = $dbCountries->prepare("SELECT * FROM countries WHERE upper(name) LIKE upper(?) LIMIT 10");
  $stmt->execute(array("$name%"));
  $countries = $stmt->fetchAll();

  // JSON encode them
  echo json_encode($countries);
?>
