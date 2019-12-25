#!/usr/bin/perl
# By Wang Liao
# Dec 24,2019
@a = ('.','~','\'','p','\'','l','.','*');
$n = 28;
$w = 1;
$r = 7;
for($i = 0;$i<$n;$i++){
	for($j = $n-$i; $j>0; $j--){
		printf(" ");
	}
	for($j=1; $j<=$w; $j++){
		printf($a[$r]);
		$r = $r>5?0:$r+1;

	}
	$w = $w + 2;
	printf("\n");
}
