<?php

$arr = [
  ['f', 'g', 'h', 'i'],
  ['j', 'k', 'p', 'q'],
  ['r', 's', 't', 'u']
];


function cari($arr, $input) {
  $nilai = 1;
  $dataArr = str_split($input, 1);
  for ($i=1; $i < count($dataArr); $i++) { 
    if (in_array($dataArr[$i], $arr[0])) {
      $nilai += 1;
    } else if (in_array($dataArr[$i], $arr[1])) {
      $nilai += 1;
    } else if (in_array($dataArr[$i], $arr[2])) {
      $nilai += 1;
    } else {
      $nilai += 0;
    }
    
  }
  return $nilai == count($dataArr) ? "true" : "false";
}

echo "fghi bernilai " . cari($arr, 'fghi') . "<br>";
echo "fghp bernilai " . cari($arr, 'fghp') . "<br>";
echo "fjrstp bernilai " . cari($arr, 'fjrstp') . "<br>";
echo "fghq bernilai " . cari($arr, 'fghq') . "<br>";
echo "fst bernilai " . cari($arr, 'fst') . "<br>";
echo "pqr bernilai " . cari($arr, 'pqr') . "<br>";
echo "fghh bernilai " . cari($arr, 'fghh') . "<br>";
echo "fghkd bernilai " . cari($arr, 'fghkd') . "<br>";
echo "abew bernilai " . cari($arr, 'abew') . "<br>";
echo "imam bernilai " . cari($arr, 'imam') . "<br>";
