// JavaScript Document

Cufon.replace('h1, h4, .ge-phone', { fontFamily: 'mentone', textShadow: '0px 1px 0px #000000' });
Cufon.replace('h2', { fontFamily: 'mentone' });

$(document).ready(function() {
   	$('.in-testimonials').cycle({fx:'fade', timeout:7000,  speed:2000});
});

$(document).ready(function() {
	$('#in-quote-form').ajaxForm(function(data) {
		if (data==1){alert('Please fill out the required fields to submit your enquiry.')}
		else if (data==0){alert('Your enquiry has been submitted. We will get back to your shortly.'); $('#in-quote-form').resetForm();}
	});
});	
