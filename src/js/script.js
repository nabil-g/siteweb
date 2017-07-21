//Utilisation de jQuery

function neutreForm() { // Supprimer les couleurs du formulaire
	$('#erreurForm').fadeOut();
	$('#okForm').show();
	$('input,textarea').css('background-color','');
}

var flex = {"display": "flex", "flex-direction": "column", "justify-content": "center", "align-items": "center"};


function actionCommune(bouton) {
	$(".navbar li a").removeClass("actif");
	$(bouton).addClass("actif");
	$(".rubDiv").css("display","none");
}

$(window).load(function() {

		$("#grandTitre").fadeIn('slow', function () {
			$('#entrance').animate({backgroundColor: "rgba(0,0,0,0.6)"}, 1500);
		});

		$('#grandTitre').hover(function () {
			$(this).animate({fontSize: '6em'}, 'fast');
		}, function () {
			$(this).animate({fontSize: '5em'}, 'fast');
		});


		$('#grandTitre').click(function () {
			$('#grandTitre').animate({fontSize: "2em", color: "rgba(0,0,0,0)"}, function(){
				$('#entrance').fadeOut('slow', function(){
					$('.navbar').fadeIn('slow').css("display","flex");
					$('#rubrique').slideDown(700, function () {
							$("#hwDesktop").typed({
								strings: ["Hello world.<span class='cursor'>█</span>"],
								typeSpeed: 0,
								contenttype: "text",
								showCursor: false
							});
					}).css("display","flex");
				});
			});
		});

		setInterval(function () {
			$(".cursor").fadeTo(0,0).delay(600).fadeTo(0,1);
		},1200);

		$("#button0").click(function() {
			$(".navbar li a").removeClass("actif");
			$(".rubDiv").css("display","none");
			$("#rubrique").animate({height:"270px"});
			$("#welcome").fadeIn("slow").css(flex);
		});
		$("#button1").click(function() {
			actionCommune(this);
			$("#rubrique").animate({height:"500px"});
			$("#one").fadeIn("slow").css(flex);
		});
		$("#button2").click(function() {
			actionCommune(this);

			$("#rubrique").animate({height:"456px"});
			$("#two").fadeIn("slow").css(flex);
		});
		$("#button3").click(function() {
			actionCommune(this);

			$("#three").fadeIn("slow").css(flex);
			$("#rubrique").animate({height:"488px"});

		});
		$("#button4").click(function() {
			actionCommune(this);

			$("#four").fadeIn("slow").css(flex);
			$("#rubrique").animate({height:"350px"});
		});
		$("#legallink").click(function(){
			$(".navbar li a").removeClass("actif");
			$(".rubDiv").css("display","none");
			$("#five").fadeIn("slow").css(flex);
			$("#rubrique").animate({height:"300px"});
		});

		$(".fa-envelope").click(function(){
			actionCommune(this);
			$(this).css("border-bottom-right-radius","0");
			$("#six").fadeIn("slow").css(flex);
			$("#form").css(flex);
			$("#rubrique").animate({height:"480px"});
			$("form input, textarea").val("");
			$('#reponseMsg').hide(); // je masque l'éventuelle réponse ajax affichée
			neutreForm();
		});

		$(document).ajaxStart(function () {
			$('#sendbutton').addClass('ajaxloading');
		});

		$(document).ajaxComplete(function () {
			$('#sendbutton').removeClass('ajaxloading');
		});


	});
