<?php
include_once "config.php";
include_once "functions.php";
if (isset($_POST['link']) && !empty($_POST['link']) && isset($_POST['user_id']) && !empty($_POST['user_id'])) {
  if (add_link($_POST['user_id'], $_POST['link'])) {
    $_SESSION['success'] = 'Ссылка успешно добалена';
    // echo $_SESSION['success'];
    $_SESSION['error'] = NULL;
  } else {
    $_SESSION['error'] = 'Во время добаления ссылки что-то пошло не так';
    // echo $_SESSION['error'];
  }
}

header('Location: /profile.php');
die;
