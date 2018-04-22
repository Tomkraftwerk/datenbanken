<?php
/*
    EXTERNER ZUGRIFF
*/
if (isset($_POST["location"])){
            // Mit MySQL-DB Verbinden
            include ("connect.php");  
                # Abruf und Anzeige der Datenbank-Inhalte
            $query = ("SELECT Wunsch_Id,FirstName,LastName, Category FROM Persons NATURAL JOIN Wuensche WHERE City = '".$_POST["location"]."'");
            echo ("<p>Ergebnisse für den Standort ".$_POST["location"].":</p>");
            $result = mysqli_query($con, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo
                    "
                    <table>
                    <thead>
                    <tr>
                    <td>Name</td>
                    <td>Kategorie</td>
                    <td>Wunsch erfüllen!</td>
                    </tr>
                    </thead>
                    <tbody>
                    ";
                while($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo ("<td>".$row["FirstName"]." ".$row["LastName"][0]."."."</td>"); #Name
                    echo ("<td>".$row["Category"]."</td>"); #Wunsch-Kategorie
                    echo ('<td>
                            <form method="get" action="details.php">
                                <button type="submit" name="id" value="'.$row["Wunsch_Id"].'">Details</button>
                            </form>
                        </td>');
                    echo "</tr>";
                }
                echo "</tbody></table>";
            }
            else {
                echo "Keine Einträge vorhanden!";
            }
            
            // Verbindung mit Datenbank trennen
            mysqli_close($con);
            exit;
}
/*
    INTERNER ZUGRUFF
*/
if (isset($_POST["intern"])){
            # Sortierung
            $sort_key = array(
                "Wunsch_Id" => " ORDER BY Wunsch_Id;",
                "Person_Id" => " ORDER BY Person_Id;",
                "FirstName" => " ORDER BY FirstName;",
                "LastName" => " ORDER BY LastName;",
                "City" => " ORDER BY City;",
                "Category" => " ORDER BY Category;",
                "Status" => " ORDER BY Status;"
            );
            if (isset($_POST["intern"])) {
                $orderby = $sort_key[$_POST["intern"]];
                   
            } else {
                $orderby = $sort_key["Wunsch_Id"];
            }

            // Mit MySQL-DB Verbinden
            include ("connect.php");  

            # Abruf und Anzeige der Datenbank-Inhalte
            $query = ("SELECT * FROM Persons NATURAL JOIN Wuensche".$orderby);
            $result = mysqli_query($con, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo
                    "
                    <p>Einträge sortiert nach <b>".$_POST["intern"]."</b></p>
                    <table>
                    <thead>
                    <tr>
                    <td>Wunsch_Id</td>
                    <td>Person_Id</td>
                    <td>FirstName</td>
                    <td>LastName</td>
                    <td>Email</td>
                    <td>City</td>
                    <td>Wunsch-Kategorie</td>
                    <td>Status</td>
                    <td>Als erfüllt markieren</td>
                    </tr>
                    </thead>
                    <tbody>
                    ";
                while($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo ("<td>".$row["Wunsch_Id"]."</td>");
                    echo ("<td>".$row["Person_Id"]."</td>");
                    echo ("<td>".$row["FirstName"]."</td>");
                    echo ("<td>".$row["LastName"]."</td>");
                    echo ("<td>".$row["Email"]."</td>");
                    echo ("<td>".$row["City"]."</td>");
                    echo ("<td>".$row["Category"]."</td>");
                    echo ("<td>".$row["Status"]."</td>");
                    echo ('<td>
                            <form method="post" action="details.php">
                                <button type="submit" name="intern" value="'.$row["Wunsch_Id"].'">Details</button>
                            </form>
                        </td>');
                    echo "</tr>";
                }
                echo "</tbody></table>";
            }
            else {
                echo "Keine Einträge vorhanden!";
            }
            
            // Verbindung mit Datenbank trennen
            mysqli_close($con);
}
?>
