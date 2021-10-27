<?php

include "includes/config.php";

function get_url($page = '')
//$page = это пустая строка в функцию мы пердаем пустую строку
{
  return HOST . "/$page";
  // точка склеивает строки / Важно чтоб был слеш/    ."/$page "
}
