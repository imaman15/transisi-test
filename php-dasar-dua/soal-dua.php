<?php
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
