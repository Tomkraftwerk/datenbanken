<?php include ("header.html"); ?>

<form action="abruf.php" method="post">
    <p>Standort:</p>
    <select name="location" required>
       <option value="" disabled selected>----------</option>
        <option value="Bielefeld">Bielefeld</option>
        <option value="Hannover">Hannover</option>     
        <option   value="Berlin">Berlin</option> 
        <option   value="Dortmund">Dortmund</option>
        <option   value="Freistatt">Freistatt</option>  
        <option   value="Eckardtsheim">Eckardtsheim</option>
    </select>
    <button type="submit">Anzeigen</button>
</form>
<br/>

<div class="entries">
<?php include ("php/fetch_entries.php"); ?>
</div>
<p><a href="index.html">Zurück zur Startseite</a></p>
</div>
</body>

</html>
