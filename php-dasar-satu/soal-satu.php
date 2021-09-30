<?php
$nilai = "72 65 73 78 75 74 90 81 87 65 55 69 72 78 79 91 100 40 67 77 86";
$nilaiArr = explode(" ", $nilai);

echo "Urutan nilai: " . join(", ", $nilaiArr) . "<br>";

sort($nilaiArr);

echo "Urutan nilai terendah ke tertinggi: " . join(", ", $nilaiArr) . "<br>";

echo "Nilai rata-rata: " . round(array_sum($nilaiArr) / count($nilaiArr), 2);
echo "<br>";

echo "7 nilai tertinggi: ";
foreach ($nilaiArr as $key => $val) {
  if ($key < 7) {
    echo ($key == 6) ? $val : $val . ", ";
  }
}
echo "<br>";

echo "7 nilai terendah: ";
foreach ($nilaiArr as $key => $val) {
  if ($key < 7) {
    echo ($key == 6) ? $val : $val . ", ";
  }
}
