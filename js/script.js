//Utilisation de jQuery

function Blink(){
	$("#cursor").fadeTo(0,0).delay(600).fadeTo(0,1);
}

$(document).ready(function() {

	$('#grandTitre').fadeIn('slow');
	$('#grandTitre').click(function(){
		$('#grandTitre').fadeOut('fast', function(){
			$('#entrance').fadeOut('slow', function(){
				$('#navbar').slideDown('slow','swing',function(){
					$('.rubrique').fadeIn('slow');
				});
			});
		});


	});







	setInterval("Blink()",1200);
	$("#button0").click(function() {
		$("#navbar li a").removeClass("actif");
		$("div").css("display","none");
		$(".rubrique").animate({height:"200px"},'swing');
		$("#welcome").fadeIn("slow");
	});
	$("#button1").click(function() {
		$("#navbar li a").removeClass("actif");
		$("#button1").addClass("actif");
		$("div").css("display","none");
		$(".rubrique").animate({height:"325px"});
		$("#one").fadeIn("slow");
	});
	$("#button2").click(function() {
		$("#navbar li a").removeClass("actif");
		$("#button2").addClass("actif");
		$("div").css("display","none");
		$(".rubrique").animate({height:"355px"});
		$("#two").fadeIn("slow");
	});
	$("#button3").click(function() {
		$("#navbar li a").removeClass("actif");
		$("#button3").addClass("actif");
		$("div").css("display","none");
		$("#three").fadeIn("slow");
		$(".rubrique").animate({height:"365px"});
	});
	$("#button4").click(function() {
		$("#navbar li a").removeClass("actif");
		$("#button4").addClass("actif");
		$("div").css("display","none");
		$("#four").fadeIn("slow");
		$(".rubrique").animate({height:"270px"});
	});
	$("#legallink").click(function(){
		$("#navbar li a").removeClass("actif");
		$("div").css("display","none");
		$("#five").fadeIn("slow");
		$(".rubrique").animate({height:"215px"});
	});

	$(".entypo-mail").click(function(){
		$("#navbar li a").removeClass("actif");
		$(".entypo-mail").addClass("actif");
		$("div").css("display","none");
		$("#six").fadeIn("slow");
		$(".rubrique").animate({height:"400px"});
	});


});
