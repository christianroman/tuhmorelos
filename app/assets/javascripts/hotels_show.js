// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
    
    var d = new Date();
    d.setDate(d.getDate()-1);

    $('.datepicker-checkin').datepicker({
	startDate: d,
	format: 'dd/mm/yyyy',
	autoclose: true,
	language: 'es'
    }).on('changeDate', function(e){
	    var d2 = new Date();
	    d2.setDate(e.date.getDate()+1);
            $('.datepicker-checkout').datepicker('update', d2).datepicker('setStartDate', e.date);
        })

    $('.datepicker-checkout').datepicker({
	format: 'dd/mm/yyyy',
	autoclose: true,
	language: 'es'
    });

    /* Slider */
    /*
    zoomShowcaseSettings = {
	imageWidth: 340,
	imageHeight: 227,
	bannerWidth: 500,
	animationSpeed: 750,
	easing: "easeOutQuint",
	sideOpacity: 0.5,
	autoPlay: true,
	autoPlayDelay: 4000,
	randomizeItems: false,
	linkTarget: "_blank",
	sideZoom: 0.75,
	backZoom: 0.5
    }
    
    if ( $("#zoom-gallery").length ) {
	$.zoomShowcase(zoomShowcaseSettings);
	zoomShowcaseSettings = null;
    }
    */

    
    $(".fancybox").fancybox();

    /* Google Maps */
    /*
    var lat = $('#map-canvas').data('lat');
    var lng = $('#map-canvas').data('lng');

    var mapOptions = {
	center: new google.maps.LatLng(lat, lng),
	zoom: 17,
	mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

    var marker = new google.maps.Marker({
	position: new google.maps.LatLng(lat, lng),
	map: map    
    });
    */
});
