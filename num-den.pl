my $a = 16;
my $b = 280;

my Rat $r = $a/$b;
say $r.numerator;
say $r.denominator;
say $r.perl; # <2/35>

my $gcd = $a gcd $b;
say $a/$gcd;
say $b/$gcd;
