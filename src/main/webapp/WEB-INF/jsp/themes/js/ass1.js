$( document ).ready(function() {
	$("#drScharff").hide();
	$("#otherUser").hide();
	$(".emailSec").hide();
	$(".smsSec").hide();
	$(".bothSec").hide();
	$(".homework").hide();
	$('#emailButton').on('click', function() {
    	$(".emailSec").show();
    	$(".smsSec").hide();
    	$(".bothSec").hide();
});
	
	$('#smsButton').on('click', function() {
    	$(".emailSec").hide();
    	$(".smsSec").show();
    	$(".bothSec").hide();
});
	
	$('.EmailChoice').on('change', function() {
	    if ($('#scharffEmail').is(':checked')) {
	    	$("#drScharff").show();
	    	$("#otherUser").hide();
	    }else{
	    	$("#drScharff").hide();
	    	$("#otherUser").show();
	    }
	});
});

$( document ).ready(function() {
	
	$(".emailSec").hide();
	$(".smsSec").hide();
	$(".bothSec").hide();
	
	
	$('#smsButton').on('click', function() {
		$("#drScharffsms").hide();
		$("#otherUsersms").hide();
    	$(".emailSec").hide();
    	$(".smsSec").show();
    	$(".bothSec").hide();
});
	
	
	$('.smsChoice').on('change', function() {
	    if ($('#scharffsms').is(':checked')) {
	    	$("#drScharffsms").show();
	    	$("#otherUsersms").hide();
	    }else{
	    	$("#drScharffsms").hide();
	    	$("#otherUsersms").show();
	    }
	});
});

$( document ).ready(function() {
	
	$(".emailSec").hide();
	$(".smsSec").hide();
	$(".bothSec").hide();
	
	
	$('#smsButton').on('click', function() {
		$("#drScharffboth").hide();
		$("#otherUserboth").hide();
    	$(".emailSec").hide();
    	$(".smsSec").show();
    	$(".bothSec").hide();
});
	
	$('#bothButton').on('click', function() {
		$(".emailSec").hide();
    	$(".smsSec").hide();
    	$(".bothSec").show();
    	$("#drScharffboth").hide();
    	$("#otherUserboth").hide();
});
	
	$('#assignment1').on('click', function() {
    	$(".homework").show();
});
	
	$('.bothChoice').on('change', function() {
	    if ($('#scharffboth').is(':checked')) {
	    	$("#drScharffboth").show();
	    	$("#otherUserboth").hide();
	    }else{
	    	$("#drScharffboth").hide();
	    	$("#otherUserboth").show();
	    }
	});
});