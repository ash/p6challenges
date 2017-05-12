my $n = 10;

my ($a, $b) = (1, 1);
($a, $b) = ($b, $a + $b) for 3 .. $n;

say $b;