<!DOCTYPE html>
<html lang="fr-FR">
	
	<head>
		<title>Site de Nabil Ghedjati</title>
		<link type="text/css" rel="stylesheet" href="css/apparence.css"/>
		<link type="text/css" rel="stylesheet" href="css/mobile.css"/>
		<link href='https://fonts.googleapis.com/css?family=Raleway:300' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="http://weloveiconfonts.com/api/?family=entypo">
		<link rel="icon" type="image/png" href="pict/favicon.png"/>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1", user-scalable=no>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    	<script type="text/javascript" src="js/script.js"></script>
    	<script type="text/javascript" src="js/googleanalytics.js"></script>

	</head>

	<body>
    	<ul id="navbar">
			<li><a title="Accueil" id="button0" href="index.html" class="hw"><strong>nabil.ghedjati</strong></a></li>
		</ul>
		
		<div class="rubrique">

			<p>
				








							<?php


							//CONNEXION A LA BASE DE DONNEES
							//On essaie qqch avec try, si il ya une erreur, on exécute qqch avec catch
							try{
							//Création de l'objet bdd via le constructeur PDO (issu de l'extension PHP Data Objects). C'est ainsi que l'on se connecte à MySQL. On active également la détection d'erreurs SQL.
							$bdd_sitenab = new PDO('mysql:host=localhost;dbname=*******;charset=utf8','**********','*********', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
							}
							//On récupère le code erreur renvoyé par PHP, on met fin à l'exécution de la page, et on affiche le message correspondant au code erreur.
							catch (Exception $e) {
								die('Erreur : '. $e->getMessage());
							}





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
								echo "Merci pour votre message $name_us !</br>";
								echo "<a href='index.php'> < Retour</a>";
							}
							else{
								// S'il n'y a pas de variables de formulaire, on affiche un message d'erreur.
								echo "Vous n'avez pas renseigné votre nom, votre adresse e-mail ou votre message !</br>";
								echo "<a href='index.php'> < Retour</a>";
							}







							?>











			</p>
			</span>


		</div>
	</body>

</html>
