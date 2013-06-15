// require_self
// require jquery
// require jquery_ujs
// require bootstrap-datepicker
// require zoom-showcase
// require jquery.easing
// require jquery.clip-animation
// require jquery.fancybox

$(function(){

    var arr = [];
    $('.background-images span').each(function(){ arr.push( $(this).data('url') ) });

    if(arr.length){

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

    }
    
});
