
<table width="270px" cellspacing="0px" cellpadding="0px">
<?php

// color bilangan prima
$data=[];
for ($i=1; $i <= 64 ; $i++) { 
  $t = 0;
  for ($j=1; $j <= $i; $j++) { 
    if ($i % $j == 0) {
      $t++;
    }
  }
  if ($t == 2) {
    array_push($data, $i);
  }
}

$dataBaru = array_unique(array_merge($data,[1, 10, 14, 22, 25, 26, 34, 35, 38, 46, 49, 50, 55, 58, 62]), SORT_REGULAR);
unset($dataBaru[1]);

// table
$nilai = 1;
for($row=1; $row<=8; $row++) {
  echo '<tr style="text-align: center;">';
  for($col=1; $col<=8; $col++){
    $total = $row + $col;
    if(in_array($nilai, $dataBaru)){
      echo '<td height=30px width=30px bgcolor=#000000 style="color: #FFFFFF;">'.$nilai.'</td>';
      
      $nilai++;
    } else {
      echo '<td height=30px width=30px bgcolor=#FFFFFF>'.$nilai.'</td>';
      $nilai++;
    }
  }
  echo '</tr>';
}

?>
</table>