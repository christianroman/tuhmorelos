//= require jquery
//= require jquery_ujs
//= require bootstrap-datepicker
//= require zoom-showcase
//= require jquery.easing
//= require jquery.clip-animation
//= require jquery.fancybox
//= require jquery.backstretch


$(function(){

    var arr = [];
    $('.background-images span').each(function(){ arr.push( $(this).data('url') ) });
 
    $.backstretch(arr, {duration: 3000, fade: 750});

});

