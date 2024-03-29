<?php
  function getListsFromMyProjects($username) {
    global $db;
    $stmt = $db->prepare('SELECT projectLists.list FROM projectUsers, projectLists WHERE ((projectUsers.user = ?) AND (projectUsers.project = projectLists.project));');
    $stmt->execute(array($username));
    return $stmt->fetchAll();
  }
  function deleteProject($id) {
    global $db;
    $stmt = $db->prepare('DELETE FROM projects WHERE id = ?;');
    return $stmt->execute(array($id));
  }

function getProjects($username) {
  global $db;
  $stmt = $db->prepare('SELECT *, julianday(strftime("%Y-%m-%d", deadline)) - julianday(strftime("%Y-%m-%d", "now")) AS diff
  FROM projects INNER JOIN projectUsers
  ON projects.id = projectUsers.project
  WHERE (user = ?)
  ORDER BY diff');
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
  $stmt = $db->prepare('SELECT * FROM projects WHERE id = ? ');
  $stmt->execute(array($id));
  return $stmt->fetch();
}

function getProjectLists($id) {
  global $db;
  $stmt = $db->prepare('SELECT lists.id AS id, lists.name AS name
    FROM lists, projectLists
    WHERE projectLists.project = ? AND projectLists.list = id');
  $stmt->execute(array($id));
  return $stmt->fetchAll();
}

function addProject($name, $admin, $deadline) {
  global $db;
  $stmt = $db->prepare('INSERT INTO projects (name, admin, deadline) VALUES (?, ?, ?);');
  if(!$stmt->execute(array($name, $admin, $deadline))){
    return false;
  }
  return $db->lastInsertId();
}

function addUserToProject($username, $project_id) {
  global $db;
  $stmt = $db->prepare('INSERT INTO projectUsers (user, project) VALUES (?, ?);');
  if(!$stmt->execute(array($username, $project_id))){
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

function isUserInProject($username, $project_id) {
  global $db;
  $stmt = $db->prepare('SELECT * FROM projectUsers WHERE (user = ? AND project = ?)');
  if (!$stmt->execute(array($username, $project_id))) {
    return false;
  }

  return (count($stmt->fetchAll()) > 0);
}

function getMembers($project_id) {
  global $db;
  $stmt = $db->prepare('SELECT * FROM projectUsers WHERE (project = ?)');
  if (!$stmt->execute(array($project_id))) {
    return false;
  }

  return $stmt->fetchAll();
}

function getTasks($username, $project_id) {
  global $db;
  $stmt = $db->prepare('SELECT i.* FROM projectLists pL INNER JOIN items i ON pL.list = i.id_lists INNER JOIN userItem uI ON i.id = uI.item WHERE (uI.user = ? AND pL.project = ?)');
  if (!$stmt->execute(array($username, $project_id))) {
    return false;
  }

  return $stmt->fetchAll();
  // $listIds = getListsOfUserInProject($username, $project_id);
  //
  // $taskIds = [];
  // foreach ($listIds as $listId) {
  // }
  //   $taskIds = array_merge($taskIds, getItems($listId));

  // return $taskIds;
}

?>
