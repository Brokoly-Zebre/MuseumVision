<!doctype html>
<html class="no-js" lang="fr">

<head>
    <meta charset="utf-8">
    <title>Présentation</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta property="og:title" content="">
    <meta property="og:type" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">

    <link rel="manifest" href="site.webmanifest">
    <link rel="icon" href="icon.png" type="image/png" />
    <link rel="shortcut icon" href="favicon.ico" />

    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/starter-template.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <meta name="theme-color" content="#fafafa">
</head>

<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="">Nouvelle Visite</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="">Nouvelle Exposition</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Visite en Cours</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Paramètrage</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<main role="main" class="container">

    <div class="row">
        <div class="col-12 col-sm-12 col-lg-8 p-3  text-dark">
            <h1>Museum Vision</h1>
        </div>
    </div>
    <form action="/">
        <label for="nbadulte">Nombre Adultes : </label>
        <input type="number" id="nbadulte" name="nbadulte"><br><br>
        <label for="nbenfant">Nombre Enfants : </label>
        <input type="number" id="nbenfant" name="nbenfant" min="0"><br><br>

    </form>

    <form action="/">
        <input type="checkbox" id="exposition1" name="expositionperma" value="exposition perma">
        <label for="expositionpermanante"><?php $id ?></label><br>
    </form>
    <h1>Tarif à Payer :</h1>
    <input type="text" id="tarif" name="tarif" value="">
    <label for="tarif"></label><br>
    <button type="button">Calculer le Tarif</button>
    <button type="button">Valider</button>