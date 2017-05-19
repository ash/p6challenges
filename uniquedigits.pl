my $number = prompt('Enter number> ');
say $number.Str.comb.unique.sort.join(', ');
$number.comb.unique.sort.join(', ').say;

