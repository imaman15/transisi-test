<?php

// $crypt_md5=md5($input);
// $crypt_sha1=sha1($input);
// $crypt_crc32=crc32($input);
 
// echo "enkripsi kata " . $input . "<br>";
// echo "enkripsi md5       : ".$crypt_md5."<br>";
// echo "enkripsi sha1      : ".$crypt_sha1."<br>";
// echo "enkripsi crc32     : ".$crypt_crc32."<br>";

// $encrypt=base64_encode($input);
// $decrypt=base64_decode($encrypt);
 
// echo "Kata Yang di Enkripsi : ".$input."<br>";
// echo "Hasil Enkrispi : ".$encrypt."<br>";
// echo "Hasil Dekripsi : ".$decrypt."<br>";

// D E = 1
// F D = -2
// H K = 3
// K G = 4
// N S = 5
// Q K = -6

$input = "DFHKNQ";
function myEncrypt($input) {
  $huruf = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
  $inputArr = str_split($input, 1);
  $j = 1;
  $data = [];
  for ($i=0; $i < count($inputArr); $i++) {
    $key = array_search($inputArr[$i], $huruf); 
    if ($key % 2 == 1) {
      array_push($data, $huruf[$key + $j]);
    } else {
      array_push($data, $huruf[$key - $j]);
    }
    $j++;
  }
  return $data;
}

echo "Input " .  $input . " dienkripsi menjadi ". implode("", myEncrypt($input));

// echo array_search("D", $huruf) - array_search("E", $huruf) . "<br>";
// echo array_search("F", $huruf) - array_search("D", $huruf). "<br>";
// echo array_search("H", $huruf) - array_search("K", $huruf). "<br>";
// echo array_search("K", $huruf) - array_search("G", $huruf). "<br>";
// echo array_search("N", $huruf) - array_search("S", $huruf). "<br>";
// echo array_search("Q", $huruf) - array_search("K", $huruf). "<br>";
