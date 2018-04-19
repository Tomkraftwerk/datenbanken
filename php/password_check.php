<?php

SESSION_START();
$_SESSION["loggedin"]=true;

$user_name = $_POST["name"];
$user_password = $_POST["password"];

# Mit MySQL-DB Verbinden
include ("connect.php");
# Daten mit entsprechendem Username abrufen
$query = "SELECT password FROM Users WHERE name='".$user_name."'";
$result = mysqli_query($con, $query);
# Verbindung mit Datenbank trennen
mysqli_close($con);

if (mysqli_fetch_assoc($result)['password'] == $user_password) {
  header('Location: ../intern.php');
}
else {
  echo '<p>Passwort oder Benutzername falsch!</p><p><a href="../abruf.php">Zurück zur letzten Seite</a></p>';
}
?>


    </div>
</body>

</html>
