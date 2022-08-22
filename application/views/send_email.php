<?php
require 'PHPMailer/PHPMailerAutoload.php';

$mail = new PHPMailer;

//Enable SMTP debugging. 
$mail->SMTPDebug = 3; 

$mail->isSMTP();                                   // Set mailer to use SMTP
$mail->Host = 'ssl://smtp.gmail.com';                    // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                            // Enable SMTP authentication
$mail->Username = 'muhon199@gmail.com';          // SMTP username
$mail->Password = 'muhonmuhonmuhon'; // SMTP password
$mail->SMTPSecure = 'tls';                         // Enable TLS encryption, `ssl` also accepted
$mail->Port = 465;                                 // TCP port to connect to

$mail->setFrom('m.ali@sjinnovation.com', 'Advanced Mobile Shop');
$mail->addReplyTo('', 'Advanced Mobile Shop');
// $mail->addAddress(''.$user_email.'');   // Add a recipient
$mail->addAddress(''.$uemail.'');   // Add a recipient
//$mail->addCC('cc@example.com');
//$mail->addBCC('bcc@example.com');


$mail->SMTPOptions = array(
    'ssl' => array(
        'verify_peer' => false,
        'verify_peer_name' => false,
        'allow_self_signed' => true
    )
);

$mail->isHTML(true);  // Set email format to HTML

$bodyContent = '<h1>HI, '.$uname.',</h1>';
$bodyContent = '<h1>Please Click the Link to veify</h1>';
$bodyContent .= '<p><a href="'.$ulink.'">Click here to verify your daily shop account</a></p>';
$mail->Subject = 'Your Verification Link Code';
$mail->Body    = $bodyContent;
 // echo 1; exit;

if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
	exit;
} else {
    echo 'Message has been sent';
}

?>
