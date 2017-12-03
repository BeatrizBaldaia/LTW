<?php

include_once('includes/init.php');
include_once('database/users.php');


$currentTime = time();
if ($currentTime > $_SESSION['endTimeout']) {
    if (correctLogin($_POST['username'], $_POST['password'])) {
        $_SESSION['username'] = $_POST['username'];
        $_SESSION['failedLoginAttempts'] = 0;
    } else {
        $_SESSION['failedLoginAttempts']++;
    }
}

header('Location: initial_page.php');
?>
