<?php include ("header.html"); ?>

<p>Zum internen Bereich:</p>
<form action="php/password_check.php" method="post">

    <p>Benutzername:</p>
    <input type="text" name="name" placeholder="Name" required>

    <p>Passwort:</p>
    <input type="text" name="password" placeholder="Passwort" required>
    <p><input type="submit"></p>
</form>

<form action="abruf.php" method="post">
    <p>Standort:</p>
    <fieldset>
        <input type="radio" id="Bielefeld" name="location" value="Bielefeld">
        <label for="Bielefeld"> Bielefeld</label>
        <input type="radio" id="Hannover" name="location" value="Hannover">
        <label for="München"> München</label>
        <input type="radio" id="Berlin" name="location" value="Berlin">
        <label for="Berlin"> Berlin</label>
        <input type="radio" id="Dortmund" name="location" value="Dortmund">
        <label for="Bielefeld"> Dortmund</label>
        <input type="radio" id="Freistatt" name="location" value="Freistatt">
        <label for="München"> Freistatt</label>
        <input type="radio" id="Eckardtstein" name="location" value="Eckardtstein">
        <label for="Berlin"> Eckardtstein</label>
        <button type="submit">Anzeigen</button>
    </fieldset>
</form>
<br/>

<?php include ("php/fetch_entries.php"); ?>

<p><a href="index.html">Zurück zur Startseite</a></p>

</div>
</body>

</html>
