//Utilisation de jQuery

function Blink(){
	$("#cursor").fadeTo(0,0).delay(600).fadeTo(0,1);
}

function neutreForm() { // Supprimer les couleurs du formulaire
	$('#erreurForm').fadeOut();
	$('#okForm').show();
	$('input,textarea').css('background-color','');
}


if (window.matchMedia("(min-width: 1025px)").matches) {
	$(document).ready(function() {

		$('#grandTitre').click(function(){
			$('#grandTitre').fadeOut('fast', function(){
				$('#entrance').fadeOut('slow', function(){
					$('.navbar').slideDown('slow','swing',function(){
						$('.rubrique').slideDown('slow',"swing");
					});
				});
			});
		});


		setInterval("Blink()",1200);
		$("#button0").click(function() {
			$(".navbar li a").removeClass("actif");
			$("div").css("display","none");
			$(".rubrique").animate({height:"270px",padding:"70px"});
			$("#welcome").fadeIn("slow");
		});
		$("#button1").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button1").addClass("actif");
			$("div").css("display","none");
			$(".rubrique").animate({height:"330px",padding:"30px"});
			$("#one").fadeIn("slow");
		});
		$("#button2").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button2").addClass("actif");
			$("div").css("display","none");
			$(".rubrique").animate({height:"400px",padding:"30px"});
			$("#two").fadeIn("slow");
		});
		$("#button3").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button3").addClass("actif");
			$("div").css("display","none");
			$("#three").fadeIn("slow");
			$(".rubrique").animate({height:"420px",padding:"30px"});
		});
		$("#button4").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button4").addClass("actif");
			$("div").css("display","none");
			$("#four").fadeIn("slow");
			$(".rubrique").animate({height:"320px",padding:"30px"});
		});
		$("#legallink").click(function(){
			$(".navbar li a").removeClass("actif");
			$("div").css("display","none");
			$("#five").fadeIn("slow");
			$(".rubrique").animate({height:"250px",padding:"30px"});
		});

		$(".entypo-mail").click(function(){
			$(".navbar li a").removeClass("actif");
			$(".entypo-mail").addClass("actif");
			$("div").css("display","none");
			$("#six, .sixbloc").fadeIn("slow");
			$(".rubrique").animate({height:"480px",padding:"30px"});
			$(".sixbloc form").css({"display":"flex","flex-direction":"column"}).show(); // Je fais apparaitre le formulaire s'il a été masqué par une réponse ajax
			// $("form input").val("");
			$('#reponseMsg').hide(); // je masque l'éventuelle réponse ajax affichée
			neutreForm();






		});




	});

}
