<?php
include_once "config.php";
include_once "functions.php";
if (!isset($_GET['id']) || empty($_GET['id'])) {
  header('Location: /profile.php');
  die;
}
delete_link($_GET['id']);
$_SESSION['success'] = "Ссылка успешно удалена";
header('Location: /profile.php');
die;
echo $_GET['id'];
