<?hh

namespace src\PHP\string\typed;

function concatenate(string $x, string $y): string
{
	return $x . $y;
}

function levenshtein(string $s1, string $s2): int 
{ 
  $sLeft = (strlen($s1) > strlen($s2)) ? $s1 : $s2; 
  $sRight = (strlen($s1) > strlen($s2)) ? $s2 : $s1; 
  $nLeftLength = strlen($sLeft); 
  $nRightLength = strlen($sRight); 
  if ($nLeftLength == 0) 
    return $nRightLength; 
  else if ($nRightLength == 0) 
    return $nLeftLength; 
  else if ($sLeft === $sRight) 
    return 0; 
  else if (($nLeftLength < $nRightLength) && (strpos($sRight, $sLeft) !== FALSE)) 
    return $nRightLength - $nLeftLength; 
  else if (($nRightLength < $nLeftLength) && (strpos($sLeft, $sRight) !== FALSE)) 
    return $nLeftLength - $nRightLength; 
  else { 
    $nsDistance = range(1, $nRightLength + 1); 
    for ($nLeftPos = 1; $nLeftPos <= $nLeftLength; ++$nLeftPos) 
    { 
      $cLeft = $sLeft[$nLeftPos - 1]; 
      $nDiagonal = $nLeftPos - 1; 
      $nsDistance[0] = $nLeftPos; 
      for ($nRightPos = 1; $nRightPos <= $nRightLength; ++$nRightPos) 
      { 
        $cRight = $sRight[$nRightPos - 1]; 
        $nCost = ($cRight == $cLeft) ? 0 : 1; 
        $nNewDiagonal = $nsDistance[$nRightPos]; 
        $nsDistance[$nRightPos] = 
          min($nsDistance[$nRightPos] + 1, 
              $nsDistance[$nRightPos - 1] + 1, 
              $nDiagonal + $nCost); 
        $nDiagonal = $nNewDiagonal; 
      } 
    } 
    return $nsDistance[$nRightLength]; 
  } 
} 

function main(array<string> $argv){

	$haystack = '
	Received shutters expenses ye he pleasant. Drift as blind above at up. 
	No up simple county stairs do should praise as. 
	Drawings sir gay together landlord had law smallest. 
	Formerly welcomed attended declared met say unlocked. 
	Jennings outlived no dwelling denoting in peculiar as he believed. 
	Behaviour excellent middleton be as it curiosity departure ourselves.
	';
	$needle = 'landlord';
	$pattern = 'fixed';
	for($i=0;$i<=1000000;$i++){
		concatenate($needle, $pattern);
	}

	for($j=0;$j<=10000;$j++){
		$k = levenshtein($needle, $haystack);
	}

}

main($argv);