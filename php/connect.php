<?php
// Mit Datenbank verbinden
$host = "localhost:3306";
$username = "wunschstern-admin";
$password = "wunschstern";
$db = "Wunschstern";
$con = mysqli_connect($host, $username, $password, $db);
// Check connection
if (mysqli_connect_errno())
  {
  echo "Fehler beim Verbinden mit MySQL: " . mysqli_connect_error();
  }
?>