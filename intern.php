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
        <select name="intern">
            <option value="" disabled selected>----------</option>
            <option value="Wunsch_Id">Wunsch_Id</option>
            <option value="Person_Id">Person_Id</option>           
            <option value="FirstName">FirstName</option>
            <option value="LastName">LastName</option>
            <option value="City">City</option>
            <option value="Category">Category</option>
            <option value="Status">Status</option>
        </select>
        <button type="submit">Anzeigen</button>
    </form>
    <br/>
    <div class="entries">
        <?php
           include ("php/fetch_entries.php");
        ?>
    </div>
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
