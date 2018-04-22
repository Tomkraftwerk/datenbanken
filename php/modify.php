<?php
include ("connect.php");

if (isset($_POST["erfuellt"])){
$query = ('SELECT Status FROM Wuensche WHERE Wunsch_Id = '.$_POST["erfuellt"]);
$result = mysqli_query($con, $query);
if (mysqli_num_rows($result) > 0) {
    
$row = mysqli_fetch_assoc($result);
$status = $row["Status"];

if ($row["Status"] == "offen") {
    $query = ('UPDATE Wuensche SET Status = "erfuellt" WHERE Wunsch_Id = '.$_POST["erfuellt"]);
    mysqli_query($con, $query);
    mysqli_close($con);
    header('Location: ../intern.php');
} else {
    $query = ('UPDATE Wuensche SET Status = "offen" WHERE Wunsch_Id = '.$_POST["erfuellt"]);
    mysqli_query($con, $query);
    mysqli_close($con);
    header('Location: ../intern.php');
}

} else {
    echo("Fehler");
}
}

if (isset($_POST["loeschen"])){
    $query = ('DELETE FROM Wuensche WHERE Wunsch_Id = '.$_POST["loeschen"]);
    mysqli_query($con, $query);
    mysqli_close($con);
    header('Location: ../intern.php');
}

?>
