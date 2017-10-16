my $n = 2017;

my $roman;
while ($n >= 1000) {
    $roman ~= 'M';
    $n -= 1000;
}

my @roman = 
    100 => < C CC CCC CD D DC DCC DCCC CM >,
    10  => < X XX XXX XL L LX LXX LXXX XC >,
    1   => < I II III IV V VI VII VIII IX >;

for @roman -> $x {
    my $digit = ($n / $x.key).Int; 
    say "->$digit";   
    $roman ~= $x.value[$digit - 1] if $digit;
    $n %= $x.key;
}

say $roman; # MMXVII
