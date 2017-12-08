<?php
function getProjects($username) {
  global $db;
  $stmt = $db->prepare('SELECT * FROM projects INNER JOIN projectUsers ON projects.id = projectUsers.project WHERE (user = ?)');
  $stmt->execute(array($username));
  return $stmt->fetchAll();
}
function getProjectByName($admin, $name) {
  global $db;
  $stmt = $db->prepare('SELECT * FROM projects WHERE name = ? AND admin = ?');
  $stmt->execute(array($admin, $name));
  return $stmt->fetch();
}

function getProjectById($id) {
  global $db;
  $stmt = $db->prepare('SELECT * FROM projects WHERE id = ?');
  $stmt->execute(array($id));
  return $stmt->fetch();
}

function addProject($name, $admin) {
  global $db;
  $stmt = $db->prepare('INSERT INTO projects (name, admin) VALUES (?, ?);');
  if(!$stmt->execute(array($name, $admin))){
    return false;
  }
  return $db->lastInsertId();
}


function addListToProject($list_id, $project_id) {
  global $db;
  $stmt = $db->prepare('INSERT INTO projectLists (list, project) VALUES (?, ?);');
  if(!$stmt->execute(array($list_id, $project_id))){
    return false;
  }
  return $db->lastInsertId();
}

?>
