//Utilisation de jQuery

// ... c'est du code un peu dégueu je sais ^^ comme le css

function Blink(){
	$("#cursor").fadeTo(0,0).delay(600).fadeTo(0,1);
}

function neutreForm() { // Supprimer les couleurs du formulaire
	$('#erreurForm').fadeOut();
	$('#okForm').show();
	$('input,textarea').css('background-color','');
}

function display() {
	$('#grandTitre').animate({fontSize: "2em", color: "rgba(0,0,0,0)"}, function(){
		$('#entrance').fadeOut('slow', function(){
			$('.navbar').fadeIn('slow',function(){
				$('#rubrique').slideDown(700, function () {
					$('#welcome').fadeIn('slow');
				}).css({"display": "flex", "flex-direction": "column", "justify-content": "center", "align-items": "center"});
			});
		});
	});
}

if (window.matchMedia("(min-width: 1025px)").matches) {
	$(document).ready(function() {

		$('#entrance').animate({backgroundColor: "rgba(0,0,0,0.1)"}, 1500, function () {
				$("#grandTitre").fadeIn(600);
		});




		$('#grandTitre').click(function () {
			display();
		});

		$('body').keypress(function (e) {
			if (e.which == 13 || e.which == 32) {
				display();
			}
		});


		setInterval("Blink()",1200);
		$("#button0").click(function() {
			$(".navbar li a").removeClass("actif");
			$("div").css("display","none");
			$("#rubrique").animate({height:"270px",padding:"70px"});
			$("#welcome").fadeIn("slow");
		});
		$("#button1").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button1").addClass("actif");
			$("div").css("display","none");
			$("#rubrique").animate({height:"330px",padding:"30px"});
			$("#one").fadeIn("slow");
		});
		$("#button2").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button2").addClass("actif");
			$("div").css("display","none");
			$("#rubrique").animate({height:"456px",padding:"30px"});
			$("#two").fadeIn("slow");
		});
		$("#button3").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button3").addClass("actif");
			$("div").css("display","none");
			$("#three").fadeIn("slow");
			$("#rubrique").animate({height:"488px",padding:"30px"});

		});
		$("#button4").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button4").addClass("actif");
			$("div").css("display","none");
			$("#four").fadeIn("slow");
			$("#rubrique").animate({height:"350px",padding:"30px"});
		});
		$("#legallink").click(function(){
			$(".navbar li a").removeClass("actif");
			$("div").css("display","none");
			$("#five").fadeIn("slow");
			$("#rubrique").animate({height:"326px",padding:"30px"});
		});

		$(".fa-envelope").click(function(){
			$(".navbar li a").removeClass("actif");
			$(".fa-envelope").addClass("actif").css("border-bottom-right-radius","0");
			$("div").css("display","none");
			$("#six, .sixbloc").fadeIn("slow");
			$("#rubrique").animate({height:"480px",padding:"30px"});
			$(".sixbloc form").css({"display":"flex","flex-direction":"column"}).show(); // Je fais apparaitre le formulaire s'il a été masqué par une réponse ajax
			$("form input, textarea").val("");
			$('#reponseMsg').hide(); // je masque l'éventuelle réponse ajax affichée
			neutreForm();

		});

	});

}
