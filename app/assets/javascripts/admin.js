//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-datepicker

$(function(){

    $('.add_fields').click(function(){

	time = new Date().getTime();
	regexp = new RegExp($(this).data('id'), 'g');

	$(this).before($(this).data('fields').replace(regexp, time));

	return false;
    });

    var d = new Date();
    d.setDate(d.getDate()-1);

    $('.datepicker-start').datepicker({
	startDate: d,
	format: 'dd/mm/yyyy',
	autoclose: true,
	language: 'es'
    }).on('changeDate', function(e){
	var d2 = new Date();
	d2.setDate(e.date.getDate()+1);
	$('.datepicker-end').datepicker('update', d2).datepicker('setStartDate', e.date);
    });

    $('.datepicker-end').datepicker({
	format: 'dd/mm/yyyy',
	autoclose: true,
	language: 'es'
    });

});
