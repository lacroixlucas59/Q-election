<html lang="fr">
	<head>
        <meta charset="UTF-8">
		<title>votez - Q-election</title>
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

        <div class="margium-s">
        <?php include("fonctions/hasard.php"); ?>


        </div>
    </body>
</html>