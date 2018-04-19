<?php
SESSION_START();

// Variablen aus Session abrufen
    $firstname = $_SESSION["first_name"];
    $lastname = $_SESSION["last_name"];
    $age = $_SESSION["age"];
    $gender = $_SESSION["gender"];
    $email = $_SESSION["mail"];
    $city = $_SESSION["location"];
    $category = $_SESSION["category"];
    $wunsch_text = $_SESSION["wunsch_text"];

// Mit MySQL-DB Verbinden
    include ("php/connect.php");

/*
    Personendaten
*/

// Überprüfen, ob schon Eintrag voranden (anhand von Vorname, Nachname, Email und Stadt)
$query = ('SELECT * FROM Persons WHERE FirstName = "'.$firstname.'" AND LastName = "'.$lastname.'" AND Email = "'.$email.'" AND City = "'.$city.'"');
    $result = mysqli_query($con, $query);
     if (mysqli_num_rows($result) > 0) {
         $row = mysqli_fetch_assoc($result);
         $personid = $row["Person_Id"];
     } /* 
     Falls nicht vorhanden: Größte ID ermitteln und Eintrag erstellen
     */ else {
        $query = "SELECT Person_Id FROM Persons";
        $result = mysqli_query($con, $query);
        if (mysqli_num_rows($result) > 0) {
            $maxpersonid = 0;
            // output data of each row
            while($row = mysqli_fetch_assoc($result)) {
                if ($row["Person_Id"] > $maxpersonid) {
                    $maxpersonid = $row["Person_Id"];
                    }
                }
        } else {
            $maxpersonid = -1;
            }
         $personid = ($maxpersonid + 1);
         // MySQL-Query vorbereiten
         $query = ('INSERT INTO Persons (Person_Id, FirstName, LastName, Age, Gender, Email, City) VALUES ("'.($personid).'","'.$firstname.'","'.$lastname.'","'.$age.'","'.$gender.'","'.$email.'","'.$city.'")');
         // Query ausführen
         mysqli_query($con, $query);
     }

/*
    Wunschdaten
*/

// Größte Wunsch_Id abrufen und für Eintrag inkrementieren
    $query = "SELECT Wunsch_Id FROM Wuensche";
    $result = mysqli_query($con, $query);
    if (mysqli_num_rows($result) > 0) {
        $maxwunschid = 0;
        // output data of each row
        while($row = mysqli_fetch_assoc($result)) {
            if ($row["Wunsch_Id"] > $maxwunschid) {
                $maxwunschid = $row["Wunsch_Id"];
            }
        }
    } else {
        $maxwunschid = -1;
    }
    $wunschid = ($maxwunschid + 1);
    // MySQL-Query vorbereiten
    $query = ('INSERT INTO Wuensche (Wunsch_Id, Wunsch_Text, Category, Status, Person_Id) VALUES ("'.$wunschid.'","'.$wunsch_text.'","'.$category.'","offen","'.$personid.'")');
    // Query ausführen
    mysqli_query($con, $query);


// Verbindung mit Datenbank trennen
    mysqli_close($con);


include ("header.html"); 


?>

    <p><?php echo($_SESSION["anrede"])?>, Ihre Daten wurden erfolgreich abgeschickt.</p>
    <p><a href="index.php">Zurück zur Startseite</a></p>
    </div>
    </body>

    </html>
