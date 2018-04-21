<?php
include ("connect.php");

$query = ('SELECT Status FROM Wuensche WHERE Wunsch_Id = '.$_POST["erfuellt"]);
$result = mysqli_query($con, $query);
if (mysqli_num_rows($result) > 0) {
    
$row = mysqli_fetch_assoc($result);
$status = $row["Status"];

var_dump($row);

if ($row["Status"] == "offen") {
    $query = ('UPDATE Wuensche SET Status = "erfuellt" WHERE Wunsch_Id = '.$_POST["erfuellt"]);
    mysqli_query($con, $query);
    header('Location: ../intern.php');
} else {
    $query = ('UPDATE Wuensche SET Status = "offen" WHERE Wunsch_Id = '.$_POST["erfuellt"]);
    mysqli_query($con, $query);
    header('Location: ../intern.php');
}

} else {
    echo("Fehler");
}

?>
