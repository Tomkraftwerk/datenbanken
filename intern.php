<?php
include ("header.html");
SESSION_START();
if (!isset($_SESSION["loggedin"])) {
    header('Location: abruf.php');
}
?>


    <h2>Einträge in der Datenbank</h2>

    <form action="intern.php" method="post">
        <p>Einträge sortieren nach:</p>
        <fieldset>
            <input type="radio" id="Wunsch_Id" name="intern" value="Wunsch_Id" <?php if (isset($_POST[ "intern"])) { if ($_POST[ "intern"]=="Wunsch_Id" ) { echo( 'checked="checked"'); } }; ?> >
            <label for="Wunsch_Id"> ID</label>
            <input type="radio" id="FirstName" name="intern" value="FirstName" <?php if (isset($_POST[ "intern"])) { if ($_POST[ "intern"]=="FirstName" ) { echo( 'checked="checked"'); } }; ?>>
            <label for="FirstName"> Vorname</label>
            <input type="radio" id="LastName" name="intern" value="LastName" <?php if (isset($_POST[ "intern"])) { if ($_POST[ "intern"]=="LastName" ) { echo( 'checked="checked"'); } }; ?>>
            <label for="LastName"> Nachname</label>
            <input type="radio" id="City" name="intern" value="City" <?php if (isset($_POST[ "intern"])) { if ($_POST[ "intern"]=="City" ) { echo( 'checked="checked"'); } }; ?>>
            <label for="City"> Stadt</label>
            <input type="radio" id="Category" name="intern" value="Category" <?php if (isset($_POST[ "intern"])) { if ($_POST[ "intern"]=="Category" ) { echo( 'checked="checked"'); } }; ?>>
            <label for="Category"> Wunsch-Kategorie</label> &nbsp;&nbsp;
            <button type="submit">Anzeigen</button>
        </fieldset>
    </form>
    <br/>

    <?php
           include ("php/fetch_entries.php");
        ?>

        <h2>Einträge generieren</h2>

        <form id="formGenerate" <?php if(isset($_GET[ 'n']) !==false) {echo 'class="hidden"';} ?>
            action="php/generate_entries.php" method="get">

            <p>Wie viele Einträge sollen erstellt werden? Bitte Zahl eingeben: </p>
            <input type="text" name="n" required>
            <p><input type="submit"><input type="reset"></p>
        </form>

        <form id="formReset" action="php/reset.php">
            <button type="submit">Datenbank zurücksetzen</button>
        </form>


        </div>
        </body>

        </html>
