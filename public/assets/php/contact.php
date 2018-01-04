<?php

	$form_data = [];

	$fname        	= $_POST['fname'];
	$lname        	= $_POST['lname'];
	$email        	= $_POST['email'];
	$cell        	= $_POST['cell'];
	$address    	= $_POST['address'];
	$zip        	= $_POST['zip'];
	$city        	= $_POST['city'];
	$program    	= $_POST['program'];

	$message     	= "First Name: $fname, \nLast Name: $lname, \nEmail: $email, \nCell: $cell, \nAddress: $address, \nZip Code: $zip, \nCity: $city, \nProgram: $program.";

	if(mail('info@zanupf-cape-youthleague.org.za', "Website Form Submission", $message))
		$form_data['success'] = true;
	else
		$form_data['success'] = false;

	echo json_encode($form_data);
	return;
?>