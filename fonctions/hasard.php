<?php

    if((isset($_GET['id']))&&(isset($_GET['op']))){

        $idenquestion = $_GET['id'];

        if($_GET['op'] == "pour"){
            $sql = "UPDATE liste SET pour = pour+1, resultat =  resultat+1 WHERE id = $idenquestion"; // Etape 0 : Écriture de la requette
            $query = $pdo->prepare($sql); // Etape 1 : Préparation de la requête
            $query->execute();  // Etape 2 : exécution de la requête

        } elseif ($_GET['op'] == "contre") {
            $sql = "UPDATE liste SET contre = contre+1, resultat =  resultat-1 WHERE id = $idenquestion"; // Etape 0 : Écriture de la requette
            $query = $pdo->prepare($sql); // Etape 1 : Préparation de la requête
            $query->execute();  // Etape 2 : exécution de la requête
        }
    }

    $sql = "SELECT * FROM liste ORDER BY RAND() LIMIT 1;"; // Etape 0 : Écriture de la requette
    $query = $pdo->prepare($sql); // Etape 1 : Préparation de la requête
    $query->execute();  // Etape 2 : exécution de la requête

    while($line = $query->fetch()) {
        // A chaque tour de boucle, $line vaut l'enregistrement courant, (c'est une ligne 
        
        echo "<img class='visuelvote' src='".$line['adresse']."' alt='illustration de Q' </p>";
        
        echo "
            <div class='contenumoduledevote'>
                <div class='moduledevote'>
                    <a href='?id=".$line['id']."&op=contre'><img src='img/croix.svg' alt='vote contre'/></a>
                    <a href='?id=".$line['id']."&op=pour'><img src='img/coeur.svg' alt='vote pour'/></a>               
                </div>           
            </div>
        ";
    }
?>