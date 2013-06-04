// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-datepicker
//= require zoom-showcase
//= require jquery.easing
//= require jquery.clip-animation
//= require jquery.fancybox

$(function(){

    var arr = [];
    $('.background-images span').each(function(){ arr.push( $(this).data('url') ) });

    (function recurse(counter) {
        var color = arr[counter];

	$('html').css('background', 'white url('+ color +') no-repeat center center fixed')
	    .css('-webkit-background-size', 'cover')
	    .css('-moz-background-size', 'cover')
	    .css('-o-background-size', 'cover')
	    .css('background-size', 'cover')

        delete arr[counter];
        arr.push(color);
        setTimeout(function() {
	    recurse(counter + 1);
	}, 8000);
    })(0);
    
});
