# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$("#carousel").carouFredSel({
		circular: false,
		infinite: true,
		auto 	: true,
		prev	: {	
			button	: "#foo2_prev",
			key		: "left"
		},
		next	: { 
			button	: "#foo2_next",
			key		: "right"
		},
		pagination	: "#foo2_pag"
		height : 500,
		width  : 700
	});