<html lang="fr">
	<head>
        <meta charset="UTF-8">
		<title>Q-election</title>
		<meta name=viewport content="width=device-width, initial-scale=1">
		<link rel="icon" type="image/png" href="img/favicon.png" />
        <meta name="theme-color" content="#97c93c">
        <meta property="og:image" content="img/icon.png" />
		<link rel="stylesheet" type="text/css" href="css/design.css"/>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
	</head>
	<body>
        <?php include("fonctions/bd.php"); ?>
       
		<header>
           
        </header>
        <div class="margium">
        <h1 class="c">Classement</h1>

        <div class='liste'>
                <?php 
                $sql = "SELECT * FROM liste ORDER BY resultat DESC LIMIT 12;"; // Etape 0 : Écriture de la requette
                $query = $pdo->prepare($sql); // Etape 1 : Préparation de la requête
                $query->execute();  // Etape 2 : exécution de la requête
                while($line = $query->fetch()) {
                    // A chaque tour de boucle, $line vaut l'enregistrement courant, (c'est une ligne 
                    
                    echo "<img class='visuelvote' src='".$line['adresse']."' alt='illustration de Q' </p>";
                    
                }
                
                
                
                
                echo "
                <div class='contenumoduledevote'>
                    <div class='moduledevote'>
                        <a href='index.php'><img src='img/noter.svg' alt='classement'/></a>
                    </div>           
                </div>";
                ?>
            </div>
        </div>
    </body>
</html>