// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require semantic-ui
//= require_tree .
// Loads all Semantic javascripts





$(document).on('turbolinks:load', function() {


$('.ui.radio.checkbox')
  .checkbox()
;

// $('#preview').click(function(){
// 	$('#clicky').modal('show');
//   	$('.videoSize').get(0).play();
// });

// $('body').click(function(){
// 	if ($('#clicky').hasClass('visible')){
// 		$('.videoSize').get(0).pause();
// 		}else{}
// 	});

$('.SocMe').click(function(){
	$('#tool1').modal('show');
  	$('.videoSize').get(0).play();
});

$('body').click(function(){
	if ($('#tool1').hasClass('visible')){
		$('.videoSize').get(0).pause();
		}else{}
	});

$('.LinkedIn').click(function(){
	$('#tool2').modal('show');
  	$('.videoSize').get(0).play();
});

$('body').click(function(){
	if ($('#tool2').hasClass('visible')){
		$('.videoSize').get(0).pause();
		}else{}
	});




// var categoryImages = 'url("../assets/'+($('#categoryImages').attr('class')) + '")';
// var class = ($('#categoryImages').attr('class'));
// $('.class').css('background-image', categoryImages); 




$('#snapshot').each(function(){
	var smallImage = 'url("../assets/'+($('#snapshot').attr('class')) + '")';
	$('#snapshot').css('background-image', smallImage);
});


$('#sideMenu').hide();


$('#browse').click(function(){
	if ($('#sideMenu').css('display') == 'none'){
	$('#sideMenu').show();
	$('.banner').bind('click', false);
	}else{
	$('#sideMenu').hide();
	$('.banner').unbind('click', false);
	}
});
$('#content').click(function(){
	if ($('#sideMenu').css('display') !== 'none'){
	$('#sideMenu').hide();
	$('.banner').unbind('click', false);
	}else{
	}
});
$('.banner').click(function(){
	if ($('#sideMenu').css('display') !== 'none'){
	$('#sideMenu').hide();
	$('.banner').unbind('click', false);
	}else{
	}
});
$(document).scroll(function(){
	$(".following.bar").attr('id','scrolled');

	if ($(window).scrollTop() == 0) {
	$(".following.bar").removeAttr('id');

	}else{}

});

});