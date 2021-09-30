<?php
$input = "TranSISI";
$lower = 0;
for ($i=0; $i < strlen($input); $i++) { 
  if($input[$i] >= "a" && $input[$i] <= "z"){
    $lower++;
  }
}

echo '"TranSISI" mengandung ' . $lower . ' buah huruf kecil.';