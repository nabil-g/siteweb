<?php

							//CONNEXION A LA BASE DE DONNEES
							//On essaie qqch avec try, si il ya une erreur, on exécute qqch avec catch
							try{
							//Création de l'objet bdd via le constructeur PDO (issu de l'extension PHP Data Objects). C'est ainsi que l'on se connecte à MySQL. On active également la détection d'erreurs SQL.
							$bdd = new PDO('mysql:host=localhost;dbname=web9692_sitenab;charset=utf8','web9692_db','connard63', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
							}
							//On récupère le code erreur renvoyé par PHP, on met fin à l'exécution de la page, et on affiche le message correspondant au code erreur.
							catch (Exception $e) {
								die('Erreur : '. $e->getMessage());
							}

 ?>
