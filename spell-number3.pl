my @names = <zero one two three four five six seven eight nine ten
             eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen
             twenty thirty forty fifty sixty seventy eighty ninety>;

multi sub spell-number(Int $n where {$n < 20}) {
    return @names[$n];
}

multi sub spell-number(Int $n where {$n < 100}) {
    my $r = @names[$n / 10 + 18];
    $r ~= '-' ~ @names[$n % 10] if $n % 10;
    return $r;
}

multi sub spell-number(Int $n where {$n < 1000}) {
    return spell-part($n, 100, 'hundred');
}

multi sub spell-number(Int $n where {$n < 1_000_000}) {
    return spell-part($n, 1000, 'thousand');
}

sub spell-part(Int $n, Int $base, Str $name) {
    my $r = spell-number(($n / $base).Int) ~ ' ' ~ $name;
    $r ~= ' ' ~ spell-number($n % $base) if $n % $base;
    return $r;
}

say spell-number(987654);  # nine hundred eighty-seven
                           # thousand six hundred fifty-four
say spell-number(0);       # zero
say spell-number(17);      # seventeen
say spell-number(101);     # one hundred one
say spell-number(2017);    # two thousand seventeen
say spell-number(2117);    # two thousand one hundred seventeen
say spell-number(100_001); # one hundred thousand one
