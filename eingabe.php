<?php include ("header.html"); ?>

<form action="check.php" method="post">

    <p>Vorname: *</p>
    <input type="text" name="first_name" placeholder="Max" required>

    <p>Nachname: *</p>
    <input type="text" name="last_name" placeholder="Mustermann" required>

    <p>Alter:</p>
    <input type="number" name="age" placeholder="Ihr Alter">
    
    <p>Geschlecht:</p>
    <select name="gender">
                <option value="" disabled selected>----------</option>
                <option value="m">Männlich</option>
                <option value="f">Weiblich</option>
                <option value="N/A">Keine Angabe / etwas anderes</option>
            </select>

    <p>Email: *</p>
    <input type="email" name="mail" placeholder="mustermann@mustermail.de" required>

    <p>Ort: *</p>
    <select name="location" required>
               <!-- Bielefeld,Berlin,Hannover,Dortmund,Freistatt,Eckardtsheim -->
                <option value="" disabled selected>----------</option>
                <option value="Bielefeld">Bielefeld</option>
                <option value="Berlin">Berlin</option>
                <option value="Hannover">Hannover</option>
                <option value="Dortmund">Dortmund</option>
                <option value="Freistatt">Freistatt</option>
                <option value="Eckardtsheim">Eckardtsheim</option>
            </select>

    <p>Art des Wunsches: *</p>
    <select name="category" required>
                <option value="" disabled selected>----------</option>
                <option value="Aktivität">Aktivität</option>
                <option value="Materiell">Materiell</option>
                <option value="sonstiges">Etwas anderes</option>
            </select>

    <p>Wunsch-Beschreibung: *</p>
    <textarea rows="10" cols="30" name="wunsch_text" placeholder="Bitte gib deinen Wunsch hier ein" required></textarea>


    <p><input type="submit"><input type="reset"></p>
</form>
<p>* = Pflichtfeld</p>
</div>
</body>

</html>
