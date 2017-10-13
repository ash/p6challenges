my $word = 'HELLO';
$word ~~ m:g:i/<[aeiou]>/;
say $/.elems;

$word = 'Münich';
#$word ~~ m:g:i:m/<[aeiou]>/;
$word ~~ m:global:ignorecase:ignoremark/<[aeiou]>/;
say $/.elems;