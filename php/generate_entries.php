<?php
if(isset($_GET['n'])) {
$n = $_GET['n']-1;

# Einlesen von sample.csv
 $lengthLine = 1000;
 $sample = array();
  if (($file = fopen("sample.csv", "r")) !== FALSE) {
    while (($data = fgetcsv($file, $lengthLine, ",")) !== FALSE) {
       array_push($sample, $data);
    }
    fclose($file);
  }

#Verbinden mit der Datenbank
include ("connect.php");

# Datenbank zurücksetzen
$query = ('DELETE FROM Persons;');
$query = ('DELETE FROM Wuensche;');
mysqli_query($con, $query);

$person_entries = "";

#Einträge generieren und in Datenbank schreiben
for ($i = 0; $i <= $n; $i++) {
  $firstname=$sample[0][array_rand($sample[0],1)];
  $lastname=$sample[1][array_rand($sample[1],1)];
  $city=$sample[2][array_rand($sample[2],1)];
  $domain=$sample[3][array_rand($sample[3],1)];
  $country=$sample[4][array_rand($sample[4],1)];
    $gender=$sample[5][array_rand($sample[5],1)];
  $email=(strtolower($firstname).".".strtolower($lastname)."@".$domain.".".$country);

  $person_entries .= ('("'.$i.'","'.$firstname.'","'.$lastname.'","'.$email.'","'.$city.'")');
  if ($i < $n) {
    $person_entries .= ',';
  }

  $category=$sample[6][array_rand($sample[6],1)];
  $text=$sample[7][array_rand($sample[7],1)];

  $wunsch_entries .= ('("'.$i.'","'.$i.'","'.$category.'","'.$text.'","offen")');
  if ($i < $n) {
    $wunsch_entries .= ',';
  }
    
    
}

$query = ('INSERT INTO Persons (Person_Id, FirstName, LastName, Email, City, Gender) VALUES '.$person_entries.';');
$query = ('INSERT INTO Wuensche (Wunsch_Id, Person_Id, Category, Wunsch_Text, Status) VALUES '.$wunsch_entries.';');

# Query ausführen
mysqli_query($con, $query);

# Verbindung mit Datenbank trennen
mysqli_close($con);


header('Location: ../intern.php');
    

}
?>
