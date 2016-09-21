//Utilisation de jQuery

function Blink(){
	$("#cursor").fadeTo(0,0).delay(600).fadeTo(0,1);
}

$(document).ready(function() {
	setInterval("Blink()",1200);
	$("#button0").click(function() {
		$("#navbar li a").removeClass("actif");
		$("span").css("display","none");
		$(".rubrique").animate({height:"200px"});
		$("#welcome").fadeIn("slow");
		$("#welcome").css("display","block");
	});
	$("#button1").click(function() {
		$("#navbar li a").removeClass("actif");
		$("#button1").addClass("actif");
		$("span").css("display","none");
		$(".rubrique").animate({height:"325px"});
		$("#one").fadeIn("slow");
		$("#one").css("display","block");
	});
	$("#button2").click(function() {
		$("#navbar li a").removeClass("actif");
		$("#button2").addClass("actif");
		$("span").css("display","none");
		$(".rubrique").animate({height:"355px"});
		$("#two").fadeIn("slow");
		$("#two").css("display","block");
	});
	$("#button3").click(function() {
		$("#navbar li a").removeClass("actif");
		$("#button3").addClass("actif");
		$("span").css("display","none");
		$("#three").fadeIn("slow");
		$(".rubrique").animate({height:"365px"});
		$("#three").css("display","block");
	});
	$("#button4").click(function() {
		$("#navbar li a").removeClass("actif");
		$("#button4").addClass("actif");
		$("span").css("display","none");
		$("#four").fadeIn("slow");
		$(".rubrique").animate({height:"270px"});
		$("#four").css("display","block");
	});
	$("#legallink").click(function(){
		$("#navbar li a").removeClass("actif");
		$("span").css("display","none");
		$("#five").fadeIn("slow");
		$(".rubrique").animate({height:"215px"});
		$("#five").css("display","block");
	});

	$(".entypo-mail").click(function(){
		$("#navbar li a").removeClass("actif");
		$(".entypo-mail").addClass("actif");
		$("span").css("display","none");
		$("#six").fadeIn("slow");
		$(".rubrique").animate({height:"400px"});
		$("#six").css("display","block");
	});

	/*$(".entypo-mail").hover(function(){
		$("#emaillink").slideToggle("fast");
	});*/
}); 
