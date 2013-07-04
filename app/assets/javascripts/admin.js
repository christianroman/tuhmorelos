//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require ckeditor/init

$(function(){

    $('.add_fields').click(function(){

	time = new Date().getTime();
	regexp = new RegExp($(this).data('id'), 'g');

	$(this).before($(this).data('fields').replace(regexp, time));

	return false;
    });

});
