<!doctype html>
<html class="no-js" lang="fr">


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
        <?php
        foreach ($expos as $expo)
        { ?>
        <input type="checkbox" id="" name="expositionperma" value="exposition perma">
        <label for="expositionpermanante"><?php echo $expo['Nom'] ?></label><br>
        <?php } ?>
    </form>

    <h1>Tarif à Payer :</h1>
    <input type="text" id="tarif" name="tarif" value="">
    <label for="tarif"></label><br>
    <button type="button">Calculer le Tarif</button>
    <button type="button">Valider</button>