my $string = 'Hello,     World!';
$string ~~ s:g/\s+/ /;
say $string;