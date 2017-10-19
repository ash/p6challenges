my $str = 'abccccdefffffggghhi';

$str ~~ s:g/
        ( (<:alpha>) $0+ )
    /{
        $0[0] ~ $0.chars
    }/;

say $str;
