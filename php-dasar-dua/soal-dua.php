<?php
$input = "DFHKNQ";
$crypt_md5=md5($input);
$crypt_sha1=sha1($input);
$crypt_crc32=crc32($input);
$str = crc32($input);
printf("%u\n",$str);
$crypt_hash=password_hash($input);
 
echo "enkripsi kata " . $input . "<br>";
echo "enkripsi md5       : ".$crypt_md5."<br>";
echo "enkripsi sha1      : ".$crypt_sha1."<br>";
echo "enkripsi crc32     : ".$crypt_crc32."<br>";
echo "enkripsi hash    : ". $str ."<br>";


$encrypt=base($input);
$decrypt=base64_decode($encrypt);
 
echo "Kata Yang di Enkripsi : ".$input."<br>";
echo "Hasil Enkrispi : ".$encrypt."<br>";
echo "Hasil Dekripsi : ".$decrypt."<br>";

?>