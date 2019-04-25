<?php
		$name=$_POST['name'];
		$visitor_email = $_POST['email'];
		$message=$_POST['message'];


		$email_form = 'ddamian97@gmail.com';
		$email_subject = "NOWY FORMULARZ KONTAKTOWY";
		$email_body = "User: $name.\n"
									"email: $visitor_email.\n"
									"message: $message.\n";

		$to="ddamian97@gmail.com";
		$headers="From: $email_from \r\n";

		$headers = "reply to: $visitor_email \r\n";


		mail($to,$email_subject, $email_body, $headers);

		header("location: firmajs.xml");
		



 ?>
