<?php
// Mit MySQL-DB Verbinden
include ("connect.php");

// Einträge löschen
$query = ('DELETE FROM Persons;');
mysqli_query($con, $query);

$query = ('DELETE FROM Wuensche;');
mysqli_query($con, $query);

// Verbindung mit Datenbank trennen
mysqli_close($con);

header('Location: ../intern.php');
?>