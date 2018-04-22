<?php include ("header.html");?>

<?php

// Mit MySQL-DB Verbinden
    include ("php/connect.php");

# Externer Zugriff
if (isset($_GET["id"])){
    # Abruf und Anzeige der Datenbank-Inhalte
            
            $query = ("SELECT Wunsch_Id,FirstName,LastName, Category, Wunsch_Text, City, Age FROM Persons NATURAL JOIN Wuensche WHERE Wunsch_Id = '".$_GET["id"]."'");
            echo ("<p>Wunsch #".$_GET["id"].":</p>");
            $result = mysqli_query($con, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                $row = mysqli_fetch_assoc($result);
                echo ('<div class="details"><p>');
                echo ("Name: ".$row["FirstName"]." ".$row["LastName"][0].".<br/>");
                echo ("Alter: ".$row["Age"]."<br/>");
                echo ("Standort: ".$row["City"]."<br/>");
                echo ("Wunsch-Kategorie: ".$row["Category"]."<br/>");
                echo ("Wunsch: ".$row["Wunsch_Text"]."<br/>");
                echo ('Wunsch erfüllen: <a href="mailto:erfuellen@wunschstern.de?subject=Wunsch%20Nr.'.$row["Wunsch_Id"].'%20erf%C3%BCllen">📧</a></p><a href="abruf.php">Zurück zur Übersicht</a></div>');
            }
            else {
                echo "Kein Eintrag vorhanden!";
            }
}

# Interner Zugriff
if (isset($_POST["intern"])){
        # Abruf und Anzeige der Datenbank-Inhalte
            $query = ("SELECT * FROM Persons NATURAL JOIN Wuensche WHERE Wunsch_Id = '".$_POST["intern"]."'");
            echo ("<p>Wunsch #".$_POST["intern"].":</p>");
            $result = mysqli_query($con, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                $row = mysqli_fetch_assoc($result);
                echo ('<div class="details"><p>');
                echo ("Person_Id: ".$row["Person_Id"]."<br/>");
                echo ("Name: ".$row["FirstName"]." ".$row["LastName"]."<br/>");
                echo ("Alter: ".$row["Age"]."<br/>");
                echo ("Geschlecht: ".$row["Gender"]."<br/>");
                echo ("Email: ".$row["Email"]."<br/>");
                echo ("Standort: ".$row["City"]."<br/>");
                echo ("Wunsch-Kategorie: ".$row["Category"]."<br/>");
                echo ("Wunsch: ".$row["Wunsch_Text"]."<br/>");
                echo ("Status: ".$row["Status"]."<br/>");
                echo ('<form method="post" action="php/modify.php">
                                <button type="submit" name="erfuellt" value="'.$_POST["intern"].'">Wunsch-Status ändern</button>
                                <button type="submit" name="loeschen" value="'.$_POST["intern"].'">Wunsch löschen</button>
                            </form></p><a href="intern.php">Zurück zur Übersicht</a></div>');
            }
            else {
                echo "Kein Eintrag vorhanden!";
            }
}

?>

</div>
</body>

</html>
