<?php

// Variablen in Session übertragen - zugreifbar auf nächster Seite

SESSION_START();

$_SESSION["first_name"]=$_POST["first_name"];
$_SESSION["last_name"]=$_POST["last_name"];
$_SESSION["age"]=$_POST["age"];
$_SESSION["mail"]=$_POST["mail"];
$_SESSION["location"]=$_POST["location"];
$_SESSION["category"]=$_POST["category"];
$_SESSION["wunsch_text"]=$_POST["wunsch_text"];

if (isset($_POST["gender"])){
    $_SESSION["gender"]=$_POST["gender"];
} else {
    $_POST["gender"]="N/A";
    $_SESSION["gender"]="N/A";
}

if ($_POST["gender"] != "N/A") {
        if ($_POST["gender"] == "m") {$gender = ("Männlich"); $anrede = ("Lieber Herr ".$_POST["last_name"]);
                                     } else {$gender = ("Weiblich"); $anrede = ("Liebe Frau ".$_POST["last_name"]);
                                            }
} else {$anrede = ($_POST["first_name"]." ".$_POST["last_name"]);}

$_SESSION["anrede"]=$anrede;

include ("header.html");
?>
    <p><?php echo($anrede)?>, bitte überprüfen Sie Ihre Daten:</p>
    <h2>Deine Daten im Überblick:</h2>
    <p>
        Vorname:
        <?php echo($_POST ["first_name"])?><br/> Nachname:
        <?php echo($_POST ["last_name"])?><br/> Alter:
        <?php echo($_POST ["age"])?><br/>
        <?php if ($_POST["gender"] != "N/A") {
        echo ("Geschlecht: ".$gender."<br/>");
}?>        
        Email:
        <?php echo($_POST ["mail"])?><br/> Ort:
        <?php echo($_POST ["location"])?><br/> Wunsch-Kategorie:
        <?php echo($_POST ["category"])?><br/> Wunsch-Beschreibung:
        <?php echo($_POST ["wunsch_text"])?>
    </p>
    <form action="submit.php"><button type="submit">Abschicken</button></form>
    <form action="eingabe.html"><button type="submit">Zurück zur letzten Seite</button></form>
    </div>
    </body>

    </html>
