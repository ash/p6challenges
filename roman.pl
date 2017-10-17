my $n = 2018;

my $roman;

my @roman = 
    1000 => < M MM MMM >,
    100  => < C CC CCC CD D DC DCC DCCC CM >,
    10   => < X XX XXX XL L LX LXX LXXX XC >,
    1    => < I II III IV V VI VII VIII IX >;

for @roman -> $x {
    my $digit = ($n / $x.key).Int; 
    $roman ~= $x.value[$digit - 1] if $digit;
    $n %= $x.key;
}

say $roman; # MMXVII
