$(document).ready(function(){

    $('.check_all').change(function(){
	var divParent = $(this).closest('div');
	var checkboxes = divParent.find('input:checkbox');

	if( $(this).is(':checked') ) 
	    checkboxes.each(function(){
		$(this).prop({checked: true});
	    });
	else 
	    checkboxes.each(function(){
		$(this).prop({checked: false});
	    });
    }); 

});
