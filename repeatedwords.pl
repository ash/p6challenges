
my $string = 'This is is a string';
$string ~~ s:g/ << (\w+) >> ' ' << $0 >> /$0/;
say $string;