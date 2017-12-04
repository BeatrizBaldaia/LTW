<?php

  $db = new PDO('sqlite:database/list.db');
  $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $dbPRAGMA = $db->prepare('PRAGMA foreign_keys=ON;');
  $dbPRAGMA->execute();

  $dbCountries = new PDO('sqlite:countries.db');
  $dbCountries->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
  $dbCountries->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $dbPRAGMA = $dbCountries->prepare('PRAGMA foreign_keys=ON;');
  $dbPRAGMA->execute();
?>
