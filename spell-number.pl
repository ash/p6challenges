my @names = <zero one two three four five six seven eight nine ten
             eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen
             twenty thirty forty fifty sixty seventy eighty ninety>;

sub spell-number($number) {
    my $n = $number.Int;

    my $r;
    if $n < 20 {
        $r = @names[$n];
    }
    elsif $n < 100 {        
        $r = @names[$n / 10 + 18];
        $r ~= '-' ~ @names[$n % 10] if $n % 10;
    }
    elsif $n < 1000 {        
        $r = @names[$n / 100] ~ ' hundred';
        $r ~= ' ' ~ spell-number($n % 100) if $n % 100;
    }
    else {
        $r = spell-number($n / 1000) ~ ' thousand';
        $r ~= ' ' ~ spell-number($n % 1000) if $n % 1000;
    }

    return $r;
}

say spell-number(987654);  # nine hundred eighty-seven
                           # thousand six hundred fifty-four
say spell-number(0);       # zero
say spell-number(17);      # seventeen
say spell-number(100_001); # one hundred thousand one
