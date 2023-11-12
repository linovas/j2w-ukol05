[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">

<head>
    <meta charset="UTF-8">
    <title>Přihlášení na dětský letní tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
<div class="container">
    <form class="form" action="/" method="post">
        <h1>Přihláška na letní tábor</h1>

        <div>
            <label for="jmenoUcastnika" class="radek">Jméno účastníka:</label>
            [@spring.formInput path="form.jmenoUcastnika" /]
            <div class="error">[@spring.showErrors"<br>"/]</div>
        </div>

        <div>
            <label for="prijmeniUcastnika" class="radek">Příjmení účastníka:</label>
            [@spring.formInput path="form.prijmeniUcastnika"/]
            <div class="error">[@spring.showErrors"<br>"/]</div>
        </div>

        <div>
            <label for="datumNarozeni" class="radek">Datum narození:</label>
            [@spring.formInput path="form.datumNarozeni"/]
            <div class="error">[@spring.showErrors"<br>"/]</div>
        </div>

        <div>
            <label for="pohlavi" class="radek">Pohlaví:</label>
            [@spring.formSingleSelect path="form.pohlavi" options={
            "":"",
            "pohlavi-chlapec":"Chlapec",
            "pohlavi.divka":"Dívka"
            }
            /]
            <div class="error">[@spring.showErrors"<br>"/]</div>
        </div>


        <div>
            <label for="turnus" class="radek">Turnus:</label>
            [@spring.formSingleSelect path="form.turnus" options={
            "":"",
            "turnus-1":"3-  9. července 2024",
            "turnus-2":"17. - 23. července 2024",
            "turnus-3":"24. - 30. července 2024"
            }
            /]
            <div class="error">[@spring.showErrors"<br>"/]</div>
        </div>

        <div>
            <label for="email" class="radek">Email na rodiče (nepovinný):</label>
            [@spring.formInput path="form.email"/]
            <div class="error">[@spring.showErrors"<br>"/]</div>
        </div>

        <div>
            <label for="telefon" class="radek">Telefon na rodiče (nepovinný):</label>
            [@spring.formInput path="form.telefon"/]
            <div class="error">[@spring.showErrors"<br>"/]</div>
        </div>

        <div>
            <button type="submit">Odeslat přihlášku</button>
        </div>

    </form>
</div>
</body>
</html>