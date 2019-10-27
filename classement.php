<html lang="fr">
	<head>
        <meta charset="UTF-8">
		<title>Classement - Q-election</title>
		<meta name=viewport content="width=device-width, initial-scale=1">
		<link rel="icon" type="image/png" href="img/favicon.png" />
        <meta name="theme-color" content="#97c93c">
        <meta property="og:image" content="img/icon.png" />
		<link rel="stylesheet" type="text/css" href="css/design.css"/>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
	</head>
	<body>
        <?php include("fonctions/bd.php"); ?>
        <?php include("componant/header.php"); ?>
        <div class="margium">
        <h1 class="c">Classement des images</h1>
        <div class='liste'>
            <?php
                if(isset($_GET['p'])){
                    $page = $_GET['p'];
                } else {
                    $page = 1;
                }
                if ($page<1){
                    $page = 1;
                }
                if ($page == 1){
                    $pagem = 0;
                } else {
                    $pagem = $page-1;
                }
                $pagep = $page+1;
                $apartir = $pagem*21;
                
                $sql = "SELECT COUNT(*) FROM liste"; // Etape 0 : Écriture de la requette
                $query = $pdo->prepare($sql); // Etape 1 : Préparation de la requête
                $query->execute();

                while($line = $query->fetch()) {

                   $limite = $line['0'];        
                
                }
                $limite = ceil($limite / 21);
                $ran = $pagem*21+1;
                $sql = "SELECT * FROM liste ORDER BY resultat DESC LIMIT $apartir , 21"; // Etape 0 : Écriture de la requette
                $query = $pdo->prepare($sql); // Etape 1 : Préparation de la requête
                $query->execute();  // Etape 2 : exécution de la requête
                while($line = $query->fetch()) {
                    
                    echo "
                    <div>
                        <img class='visuelvote' src='".$line['adresse']."' alt='illustration de Q'/>
                        <span><img src='img/score.svg' alt='score'/> ".$ran."   <img src='img/jaime.svg' alt='j aime'/>  ".$line['pour']." <img src='img/contre.svg' alt='contre'/>".$line['contre']."</span>
                    </div>
                    ";
                    $ran++;
                };
            ?>
            </div>
            <div class='contenumoduledevote'>
                <div class='moduledevote'>
                    <?php

                     if($pagem<1){
                        echo "<img style='opacity:0;' src='img/precedent.svg' alt='precedent'/>";
                     } else {
                        echo "<a href='classement.php?p=".$pagem."'><img src='img/precedent.svg' alt='precedent'/></a>";
                     }
                     echo "<p> page ".$page."</p>";


                     if($page>$limite){
                        header('Location: ?p='.$limite);
                    }
                     if($page>=$limite){
                        echo "<img style='opacity:0;' src='img/suivant.svg' alt='suiavnt'/>";
                     } else {
                        echo "<a href='classement.php?p=".$pagep."'><img src='img/suivant.svg' alt='suivant'/></a>";
                    }
                ?>
                </div>           
            </div>
        </div>
    </body>
</html>