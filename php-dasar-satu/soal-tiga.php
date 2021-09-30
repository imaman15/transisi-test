<?php 

$input = "Jakarta adalah ibukota negara Republik Indonesia";

function generateUBT($input)
	{
		$arr_input = explode(' ', $input);

		// unigram
		$unigram = '';
		foreach ($arr_input as $item) {
			$unigram .= $item.', ';
		}
		$unigram = substr($unigram, 0, -2);

		// bigram
		$x = 0;
		$bigram = '';
		foreach ($arr_input as $item) {
			if ($x < 1) {
				$bigram .= $item.' ';
				$x++;
			} else {
				$bigram .= $item.', ';
				$x = 0;
			}
		}
		$bigram = substr($bigram, 0, -2);

		// trigram
		$y = 0;
		$trigram = '';
		foreach ($arr_input as $item) {
			if ($y < 2) {
				$trigram .= $item.' ';
				$y++;
			} else {
				$trigram .= $item.', ';
				$y = 0;
			}
		}
		$trigram = substr($trigram, 0, -2);


		$result = 'Unigram : '. strtolower($unigram) . '<br>';
		$result .= 'Bigram : '. strtolower($bigram) . '<br>';
		$result .= 'Trigram : '. strtolower($trigram);

		return $result;
	}

  echo generateUBT($input);