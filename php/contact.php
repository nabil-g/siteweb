<!DOCTYPE html>
<html lang="fr-FR">

	<head>
		<title>Site de Nabil Ghedjati</title>

		<link href='https://fonts.googleapis.com/css?family=Raleway:300' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
		<link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="http://weloveiconfonts.com/api/?family=entypo">
		<link rel="icon" type="image/png" href="../pict/favicon.png"/>
		<link type="text/css" rel="stylesheet" href="../css/style.css"/>
		<link type="text/css" rel="stylesheet" href="../css/mobile.css"/>
		<link rel="stylesheet" type="text/css" href="../css/style_c.css">

		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1", user-scalable=no>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="../js/script.js"></script>
    <script type="text/javascript" src="../js/googleanalytics.js"></script>

	</head>

	<body>

		<!-- HEADER -->

		<header>
			<nav>
				<ul id="navbar">
					<li><a title="Accueil" id="button0" href="../index.php">Nabil.Ghedjati</a></li>
					<li class="right" id="twitter"><a title="Twitter" class="entypo-twitter" href="https://twitter.com/Nabil63" target="_blank"></a></li>
					<li class="right" id="insta"><a title="Instagram" class="entypo-instagrem" href="https://www.instagram.com/nabil.ghedjati/" target="_blank"></a></li>
					<li class="right" id="linkedin"><a title="LinkedIn" class="entypo-linkedin" href="https://www.linkedin.com/in/nabil-ghedjati-5051a2117" target="_blank"></a></li>
					<li class="right" id="github"><a title="GitHub" class="entypo-github" href="https://github.com/nabil-g" target="_blank"></a></li>
				</ul>
			</nav>
		</header>

		<section class="rubrique">
			<div class="">

				<p>









								<?php

									include ('db.php');





								//RECUPERATION DES DONNEES DU FORMULAIRE DE CONTACT
								// Pour info :
								// La fonction strip_tags permet d'effacer les balises HTML qui pourraient être injectés par l'utilisateur.
								// Le suffixe us qui termine les variables résultant d'un formulaire me permet de les distinguer des autres variables (user string).

								// On teste la présence de ces variables envoyées via le formulaire
								if(isset($_POST['name']) AND isset($_POST['mailaddress']) AND isset($_POST['message']) AND !empty($_POST['name']) AND !empty($_POST['mailaddress']) AND !empty($_POST['message'])) {
									//On supprime les potentielles balises HTML et on enregistre les variables du formulaire dans d'autres variables, plus lisibles.
									$name_us = strip_tags($_POST['name']);
									$address_us = strip_tags($_POST['mailaddress']);
									$msg_us = strip_tags($_POST['message']);
									//On enregistre dans une variable la valeur de l'array superglobale $_SERVER correspondant au caractéristiques du navigateur de l'utilisateur.
									$nav = $_SERVER['HTTP_USER_AGENT'];

									$adresseip = $_SERVER['REMOTE_ADDR'];


									//ENREGISTREMENT DES DONNEES DANS LA BASE DE DONNEES

									//On prépare la requete d'insertion avant de lui insérer les variables de l'utilisateur (afin d'eviter des injections SQL).
									$req = $bdd_sitenab->prepare('INSERT INTO messages(nom, adressemail, message, date_msg, adresseip, navigateur)
										VALUES(:nom, :adressemail, :message, :date_msg, :adresseip, :navigateur)');

									//On exécute la requete avec les variables "nettoyées" des éventuelles injections SQL.
									$req->execute(array(
										'nom' => $name_us,
										'adressemail' => $address_us,
										'message' => $msg_us,
										'date_msg' => date("Y-m-d H:i:s"),
										'adresseip' => $adresseip,
										'navigateur' => $nav
										));

									// On affiche un message.
									echo "Merci pour votre message $name_us !</br></br>";
									echo "<a href='../index.php'> < Retour</a>";
								}
								else{
									// S'il n'y a pas de variables de formulaire, on affiche un message d'erreur.
									echo "Vous n'avez pas renseigné votre nom, votre adresse e-mail ou votre message !</br></br>";
									echo "<a href='../index.php'> < Retour</a>";
								}







								?>











				</p>
		</div>


		</section>
	</body>

</html>
