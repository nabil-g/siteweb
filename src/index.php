<!DOCTYPE html>
<html lang="fr-FR">
	<head>
		<title>Site de Nabil Ghedjati</title>
		<link href='https://fonts.googleapis.com/css?family=Raleway:300' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
		<link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="lib/font-awesome-4.7.0/css/font-awesome.min.css">
		<link rel="icon" type="image/png" href="assets/favicon.png">
		<link rel="stylesheet" href="https://cdn.rawgit.com/konpa/devicon/master/devicon.min.css">

		<!-- build:css  css/styles.min.css -->
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<link type="text/css" rel="stylesheet" href="css/mobile.css">
		<!-- endbuild -->

		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1", user-scalable=no>
		<meta name="description" content="Je présente ici mon CV">
		<meta name="keywords" content="developer,web,dev,développeur,CSS,HTML,JS,PHP,simplon,coda,codeur,internet,informatique">


	</head>

	<body>

		<!-- TITRE À CACHER -->
		<section id="entrance">
			<h1 id="grandTitre"><a href="#">Nabil.Ghedjati</a></h1>
			<noscript id="noscriptDesktop">
				Ce site nécessite l'activation de JavaScript.
				<p><a class="downloadlink" href="assets/cv_nabil_ghedjati_2017.pdf" type="application/pdf" target="_blank">Télécharger le CV</a></p>
			</noscript>
		</section>

		<main>
			<!-- HEADER -->
				<header>
		    	<ul class="navbar">
						<span class="leftLinks">
							<li><a title="Accueil" id="button0" href="#">Nabil.Ghedjati</a></li>
							<li><a id="button1" href="#">Compétences</a></li>
							<li><a id="button2" href="#">Expérience</a></li>
							<li><a id="button3" href="#">Formation</a></li>
						</span>

						<span class="rightLinks">
							<li class="right" id="about"><a id="button4" href="#">À propos</a></li>
							<li class="right" id="github"><a title="GitHub" class="fa fa-github" href="https://github.com/nabil-g" target="_blank"></a></li>
							<li class="right" id="linkedin"><a title="LinkedIn" class="fa fa-linkedin" href="https://www.linkedin.com/in/nabil-ghedjati-5051a2117" target="_blank"></a></li>
							<li class="right" id="insta"><a title="Instagram" class="fa fa-instagram" href="https://www.instagram.com/nabil.ghedjati/" target="_blank"></a></li>
							<li class="right" id="twitter"><a title="Twitter" class="fa fa-twitter"  href="https://twitter.com/Nabil63" target="_blank"></a></li>
							<li class="right" id="mail"><a title="Contact" class="fa fa-envelope" href="#"></a></li>
						</span>
					</ul>
				</header>

			<!-- SECTION RUBRIQUE -->
			<section id="rubrique">

					<!-- DIV WELCOME -->

				<div id="welcome" class="rubDiv">
					<h2 class="hw" id="hwDesktop"></h2>
					<h2 class="hw" id="hwMobile">Hello world.<span class='cursor'>█</span></h2>
					<p id="msg">Bienvenue ! Je suis un jeune <strong>développeur Web</strong> de <?php echo (date('Y') - 1992); ?> ans,</br> plein d'idées et de motivation. Consultez mon parcours et n'hésitez pas à me contacter.
					</p>
					<p><a class="downloadlink" href="assets/cv_nabil_ghedjati_2017.pdf" type="application/pdf" target="_blank">Télécharger le CV</a></p>
					<noscript>
						Ce site nécessite l'activation de JavaScript.
					</noscript>
				</div>

				<!-- DIV COMPETENCES -->

				<div id="one" class="rubDiv">
					<h2>Compétences</h2>
					<h3>Opérationnel sur :</h3>
					<div class="logoSkills" id="skills1">
							<a title="HTML5" href="https://www.w3.org/html/" target="_blank" class="devicon-html5-plain-wordmark colored"></a>
				      <a title="CSS3" href="https://www.w3.org/Style/CSS/" target="_blank" class="devicon-css3-plain-wordmark colored"></a>
							<a title="JavaScript" href="https://js.org/" target="_blank" class="devicon-javascript-plain colored"></a>
							<a title="jQuery" href="https://jquery.com/" target="_blank" class="devicon-jquery-plain-wordmark colored"></a>
							<a title="PHP" href="http://www.php.net/" target="_blank" class="devicon-php-plain colored"></a>
							<a title="Atom" href="https://atom.io/" target="_blank" class="devicon-atom-original colored"></a>
					</div>
					<div class="logoSkills">
						<a title="Bootstrap" href="http://getbootstrap.com/" target="_blank" class="devicon-bootstrap-plain colored"></a>
						<a title="Git" href="https://git-scm.com/" target="_blank" class="devicon-git-plain colored"></a>
						<a title="GitHub" href="https://github.com/" target="_blank" class="devicon-github-plain colored"></a>
						<a title="MySQL" href="https://www.mysql.fr/" target="_blank" class="devicon-mysql-plain colored"></a>
						<a title="PHPStorm" href="https://www.jetbrains.com/phpstorm/" target="_blank" class="devicon-phpstorm-plain colored"></a>
						<a title="Linux" href="https://www.linuxfoundation.org/" target="_blank" class="devicon-linux-plain colored"></a>
						<a title="Apache Cordova" href="https://cordova.apache.org/" target="_blank"><img src="assets/cordova_64.png" alt="Cordova Icon" /></a>
					</div>
					    	<h4 >Je me forme sur :</h4>
					<div class="logoSkills">
							<a title="Node.JS" href="https://nodejs.org/en/" target="_blank" class="devicon-nodejs-plain colored"></a>
				      <a title="Arduino" href="https://www.arduino.cc/" target="_blank"><img src="assets/arduino.svg" alt="Arduino Icon" style="width:58px" /></a>
							<a title="Vue.js" href="https://vuejs.org/" target="_blank" class="devicon-vuejs-plain colored"></a>
							<a title="Sass" href="http://sass-lang.com/" target="_blank" class="devicon-sass-original colored"></a>
							<!-- <a title="Symfony" href="htts://symfony.com/" target="_blank" class="devicon-symfony-original colored"></a> -->
					</div>
				</div>

				<!-- DIV EXPERIENCE -->

				<div id="two" class="rubDiv">
					<h2 >Expérience</h2>
					<table>
						<tr>
							<td class="date">Juillet 2014</td>
							<td>Auxiliaire d'été</br>
								<em>Société Générale, agence de Thiers</em>
							</td>
						</tr>
						<tr>
							<td class="date">Années scolaires 2012/2014</td>
							<td>Stagiaire (pendant 17 semaines non consécutives)</br>
								<em>Caisse d'Épargne Auvergne-Limousin, agence de Thiers</br>
								Société Générale, agences de Beaumont et Thiers</em>
							</td>
						</tr>
						<tr>
							<td class="date">Été 2012</td>
							<td>Manutentionnaire (par intérim)</br>
								<em>Brüggen France (céréales)</em>
							</td>
						</tr>
						<tr>
							<td class="date">Été 2009/été 2010</td>
							<td>Agent d'entretien</br>
								<em>La Rayonnante (services d’entretien)</em>
							</td>
						</tr>
					</table>
				</div>

				<!-- DIV FORMATION -->

				<div id="three" class="rubDiv">
					<h2 >Formation</h2>
						<table>
							<tr>
								<td class="date">2017/2018</td>
								<td><strong>EPSI Lyon</strong></br>
									<em>Bachelor Informatique 3ème année</em>
								</td>
							</tr>							<tr>
								<td class="date">2016/2017</td>
								<td><strong>Simplon.co</strong></br>
									<em>Labélisée Grande école du numérique</em>
								</td>
							</tr>
							<tr>
								<td class="date">2014/2015</td>
								<td><strong>Licence Pro Management des collectivités
									territoriales</strong> </br>(formation uniquement)</br>
									<em>Université d'Auvergne, CLERMONT-FERRAND</em>
								</td>
							</tr>
							<tr>
								<td class="date">2012 / 2014</td>
								<td><strong>BTS Banque Option Marché des Particuliers</strong></br>
									<em>Lycée Ambroise Brugière, CLERMONT-FERRAND</em>
								</td>
							</tr>
							<tr>
								<td class="date">2008 / 2010</td>
								<td><strong>Baccalauréat Sciences et Technologies de la Gestion</br>
									spécialité Comptabilité et Finance d'entreprise</strong></br>
									<em>Lycée Montdory, THIERS</em>
								</td>
							</tr>
						</table>
				</div>

				<!-- DIV A PROPOS -->

				<div id="four" class="rubDiv">
					<h2>À propos</h2>
						</br>
						<table>
							<tr>
								<td class="date">Langues</td>
								<td>Français (langue maternelle)</br>
									Anglais (courant)
								</td>
							</tr>
							<tr>
								<td class="date">Centres d'intérêts</td>
								<td>Cinéma, nouvelles technologies, sports de montagne,</br>
								 tennis, photographie, musique
							 </td>
							</tr>
						</table>
						<p class="credits">&copy; <?php echo date('Y'); ?> Nabil Ghedjati.  <a id="legallink" href="#"><strong>Mentions légales</strong></a></p>
				</div>

				<!-- DIV MENTIONS -->

				<div id="five" class="rubDiv">
					<h2>Mentions légales</h2>
					<p class="credits">
						Créateur et propriétaire : Nabil Ghedjati
					</br>Ce site est hébergé par <a href="https://shost.ca/" target="_blank">sHost.ca</a>, Nouveau-Brunswick &amp; Québec, Canada.
						</br>Il fonctionne de manière optimale sur les navigateurs Chrome et Firefox.
						</br>
						</br>The PHP logo is Copyright &copy; 2001-<?php echo date('Y'); ?> the PHP Group. All rights reserved.
						</br>The jQuery logo is Copyright &copy; <?php echo date('Y'); ?> The jQuery Foundation.
						</br>Crédits photo : <a href="https://unsplash.com/photos/Y1ByvAGQ5iE" target="_blank">Unsplash.com</a>
						</br>
						</br>&copy; <?php echo date('Y'); ?> Nabil Ghedjati.
					</p>
				</div>

				<!-- DIV CONTACT -->

				<div id="six" class="rubDiv">

					<h2>Contact</h2>

						<p id="reponseMsg"></p>
						<form id="form" name="contactform" accept-charset="UTF-8" onsubmit="return verifForm(this)" method="POST">
							<input type="text" id="name" name="name" placeholder="Votre nom" value="">
							<input type="email" id="mailaddress" name="mailaddress" placeholder="Votre adresse e-mail" value=""  >
							<textarea id="message" type="text" name="message" rows="6" placeholder="Votre message (entre 2 et 1500 caractères)" value=""></textarea>
							<p id="erreurForm">
								Les champs marqués en rouge sont incomplets ou incorrects.
							</p>
							<p id="okForm"></p>
							<button id="sendbutton" type="submit" name="send">Envoyer</button>
						</form>

					<p class="credits">
						&copy; <?php echo date('Y'); ?> Nabil Ghedjati.
					</p>

				</div>

			</section>
		</main>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script src="lib/pace.min.js"></script>
		<script src="lib/jquery.color.js"></script>
		<script src="lib/typed.js"></script>
		<script src="lib/googleanalytics.js"></script>

<!-- build:js js/main.min.js-->
		<script type="text/javascript" src="js/script.js"></script>
		<script type="text/javascript" src="js/form.js"></script>
<!-- endbuild -->
	</body>

</html>
