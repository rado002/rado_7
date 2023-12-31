<?php
  $mysqli = new mysqli('localhost', 'root', '2505', 'rado_5');
  if ($mysqli->connect_error) {
      die('Connect Error (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
  }
  echo 'Connected successfully.';
  $mysqli->close();
