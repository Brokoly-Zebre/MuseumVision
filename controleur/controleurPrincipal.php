<?php

function controleurPrincipal($action){
    $lesActions = array();
    $lesActions["defaut"] = "tarif.php";


    
    if (array_key_exists ( $action , $lesActions )){
        return $lesActions[$action];
    }
    else{
        return $lesActions["defaut"];
    }

}

?>