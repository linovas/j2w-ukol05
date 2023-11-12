[#ftl]
<!DOCTYPE html>
<html lang="cs">

<head>
    <meta charset="UTF-8">
    <title>Přihláška na letní tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
<div class="container">

    <h1>Shrnutí přihlášky</h1>

    <div>
        <label for="jmenoUcastnika" class="radek" readonly>Jméno účastníka:</label>
        <span>${form.jmenoUcastnika}</span>
    </div>

    <div>
        <label for="prijmeniUcastnika" class="radek" readonly>Příjmení účastníka:</label>
        <span>${form.prijmeniUcastnika}</span>
    </div>

    <div>
        <label for="datumNarozeni" class="radek">Datum narození:</label>
        <span>${form.datumNarozeni}</span>
    </div>

    <div>
        <label for="pohlavi" class="radek">Pohlaví:</label>
        <span>${form.pohlavi}</span>
    </div>


    <div>
        <label for="turnus" class="radek">Turnus:</label>
        <span>${form.turnus}</span>
    </div>

    <div>
        <label for="email" class="radek" readonly>Email na rodiče (nepovinný):</label>
        <span>${form.email}</span>
    </div>

    <div>
        <label for="telefon" class="radek" readonly>Telefon na rodiče (nepovinný):</label>
        <span>${form.telefon}</span>
    </div>

</div>
</body>
</html>