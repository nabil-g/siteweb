// jquery

if (window.matchMedia("(max-width: 980px)").matches) {
	$(document).ready(function() {

    $('#menu').click(function() {
      $('#bar').slideToggle();
    });


		setInterval("Blink()",1200);
		$("#button0").click(function() {
			$(".navbar li a").removeClass("actif");
			$("div").css("display","none");
			$("#welcome").fadeIn("slow");
      $('#bar').slideUp();
		});
		$("#button1").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button1").addClass("actif");
			$("div").css("display","none");
			$("#one").fadeIn("slow");
      $('#bar').slideUp();
		});
		$("#button2").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button2").addClass("actif");
			$("div").css("display","none");
			$("#two").fadeIn("slow");
      $('#bar').slideUp();
		});
		$("#button3").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button3").addClass("actif");
			$("div").css("display","none");
			$("#three").fadeIn("slow");
      $('#bar').slideUp();
		});
		$("#button4").click(function() {
			$(".navbar li a").removeClass("actif");
			$("#button4").addClass("actif");
			$("div").css("display","none");
			$("#four").fadeIn("slow");
      $('#bar').slideUp();
		});
		$("#legallink").click(function(){
			$(".navbar li a").removeClass("actif");
			$("div").css("display","none");
			$("#five").fadeIn("slow");
      $('#bar').slideUp();
		});

		$(".entypo-mail").click(function(){
			$(".navbar li a").removeClass("actif");
			$(".entypo-mail").addClass("actif");
			$("div").css("display","none");
			$("#six, .sixbloc").fadeIn("slow");
      $('#bar').slideUp();
			$(".sixbloc form").css({"display":"flex","flex-direction":"column"}).show(); // Je fais apparaitre le formulaire s'il a été masqué par une réponse ajax
			$('#reponseMsg').hide(); // je masque l'éventuelle réponse ajax affichée
			neutreForm();





		});




	});

}
