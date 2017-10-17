my @roman = 
    1000 => < M MM MMM >,
    100  => < C CC CCC CD D DC DCC DCCC CM >,
    10   => < X XX XXX XL L LX LXX LXXX XC >,
    1    => < I II III IV V VI VII VIII IX >;

my $n;

grammar Roman {
    token TOP {
        { $n = 0 }
        <thousands>?
        <hundreds>?
        <tens>?
        <ones>?
    }

    token thousands {
        | M    { $n += 1000 }
        | MM   { $n += 2000 }
        | MMM  { $n += 3000 }
        | MMMM { $n += 4000 }
    }

    token hundreds {
        | C    { $n += 100 }
        | CC   { $n += 200 }
        | CCC  { $n += 300 }
        | CD   { $n += 400 }
        | D    { $n += 500 }
        | DC   { $n += 600 }
        | DCC  { $n += 700 }
        | DCCC { $n += 800 }
        | CM   { $n += 900 }
    }

    token tens {
        | X    { $n += 10 }
        | XX   { $n += 20 }
        | XXX  { $n += 30 }
        | XL   { $n += 40 }
        | L    { $n += 50 }
        | LX   { $n += 60 }
        | LXX  { $n += 70 }
        | LXXX { $n += 80 }
        | XC   { $n += 90 }
    }

    token ones {
        | I    { $n += 1 }
        | II   { $n += 2 }
        | III  { $n += 3 }
        | IV   { $n += 4 }
        | V    { $n += 5 }
        | VI   { $n += 6 }
        | VII  { $n += 7 }
        | VIII { $n += 8 }
        | IX   { $n += 9 }
    }
}

for 1..3999 {
    my $dec = $_;
    my $number = $dec;
    my $roman;

    for @roman -> $x {
        my $digit = ($dec / $x.key).Int; 
        $roman ~= $x.value[$digit - 1] if $digit;
        $dec %= $x.key;
    }

    Roman.parse($roman);

    say "$number -> $roman -> $n";
}
