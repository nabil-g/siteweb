//Utilisation de jQuery

function neutreForm() { // Supprimer les couleurs du formulaire
	$('#erreurForm').fadeOut();
	$('#okForm').show();
	$('input,textarea').css('background-color','');
}

var flex = {"display": "flex", "flex-direction": "column", "justify-content": "center", "align-items": "center"};

function display() {
	$('#grandTitre').animate({fontSize: "2em", color: "rgba(0,0,0,0)"}, function(){
		$('#entrance').fadeOut('slow', function(){
			$('.navbar').fadeIn('slow',function(){
				$('#rubrique').slideDown(700, function () {
					$('#welcome').fadeIn('slow', function () {
						$("#hw").typed({
										strings: ["Hello world.<span id='cursor'>█</span>"],
										typeSpeed: 0,
										contenttype: "text",
										showCursor: false
									});
					});
				}).css(flex);
			});
		});
	});
}

if (window.matchMedia("(min-width: 1025px)").matches) {
	$(document).ready(function() {

		$("#grandTitre").fadeIn(1100, function () {
			$('#entrance').animate({backgroundColor: "rgba(0,0,0,0.6)"}, 1500);
		});

		$('#grandTitre').click(function () {
			display();
		});

		$('body').keypress(function (e) {
			if (e.which == 13 || e.which == 32) {
				display();
			}
		});

		setInterval(function () {
			$("#cursor").fadeTo(0,0).delay(600).fadeTo(0,1);
		},1200);

		$("#button0").click(function() {
			$(".navbar li a").removeClass("actif");
			$("div").css("display","none");
			$("#rubrique").animate({height:"270px"});
			$("#welcome").fadeIn("slow").css(flex);
		});
		$("#button1").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button1").addClass("actif");
			$("div").css("display","none");
			$("#rubrique").animate({height:"330px",padding:"30px"});
			$("#one").fadeIn("slow").css(flex);
		});
		$("#button2").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button2").addClass("actif");
			$("div").css("display","none");
			$("#rubrique").animate({height:"456px",padding:"30px"});
			$("#two").fadeIn("slow").css(flex);
		});
		$("#button3").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button3").addClass("actif");
			$("div").css("display","none");
			$("#three").fadeIn("slow").css(flex);
			$("#rubrique").animate({height:"488px",padding:"30px"});

		});
		$("#button4").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button4").addClass("actif");
			$("div").css("display","none");
			$("#four").fadeIn("slow").css(flex);
			$("#rubrique").animate({height:"350px",padding:"30px"});
		});
		$("#legallink").click(function(){
			$(".navbar li a").removeClass("actif");
			$("div").css("display","none");
			$("#five").fadeIn("slow").css(flex);
			$("#rubrique").animate({height:"326px",padding:"30px"});
		});

		$(".fa-envelope").click(function(){
			$(".navbar li a").removeClass("actif");
			$(".fa-envelope").addClass("actif").css("border-bottom-right-radius","0");
			$("div").css("display","none");
			$("#six").fadeIn("slow").css(flex);
			$("#rubrique").animate({height:"480px",padding:"30px"});
			$("#form").css(flex);
			$("form input, textarea").val("");
			$('#reponseMsg').hide(); // je masque l'éventuelle réponse ajax affichée
			neutreForm();

		});

	});

}
