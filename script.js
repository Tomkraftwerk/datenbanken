        $(document).ready(function() {
            $("#formReset").submit(function() {
               alert("Datenbank erfolgreich zurückgesetzt") 
            });
            $("#formGenerate").submit(function() {
                alert("Einträge erfolgreich erstellt")
            });
            /* Hamburger-Menü */
            $("#button").click(function() {
                $("nav a").toggle("slow");
                if ($("#button").text() === "☰") {
                    $("#button").text("🞪");
                } else {
                    $("#button").text("☰");
                };
                $("nav").toggleClass("grey");
            });
        });