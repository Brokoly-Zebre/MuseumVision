<?php

include_once "$racine/modele/bd.resto.inc.php";
include_once "$racine/modele/bd.photo.inc.php";


// recuperation des donnees GET, POST, et SESSION
;

// appel des fonctions permettant de recuperer les donnees utiles a l'affichage
$expo = getExpositions();

// traitement si necessaire des donnees recuperees
;

// appel du script de vue qui permet de gerer l'affichage des donnees

include "$racine/vue/entete.html.php";
include "$racine/vue/vueTarif.html.php";
include "$racine/vue/pied.html.php";


?>