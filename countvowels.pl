my $str = 'Test string to count vowels in';

say ($str ~~ m:g/ ( <[aeiou]> ) /).elems;

