my $string = prompt('Enter the string> ');
$string ~~ s:g/\s+/ /;
say $string;