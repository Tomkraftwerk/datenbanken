<?php
include ("connect.php");
$query = ('UPDATE Wuensche SET Status = "erfuellt" WHERE Wunsch_Id = '.$_POST["erfuellt"]);
mysqli_query($con, $query);
header('Location: ../intern.php');
?>