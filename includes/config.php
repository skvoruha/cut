<?php

define('SITE_NAME', "Cut your URL");
define('HOST', "http://" . $_SERVER['HTTP_HOST']);

define('DB_HOST', '127.0.0.1'); // или local host
define('DB_NAME', 'cut_url');
define('DB_USER', 'root');
define('DB_PASS', '');

define('URL_CHARS', "qwertyuiopasdfghjklzxcvbnm1234567890-");
session_start();
