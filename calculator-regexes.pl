my @expressions = (
    "4 + 5.3",
    "7.8 / 3"
);

for @expressions -> $expression {
    $expression ~~ / (<[\d\.]>+) \s* ('+' | '-' | '*' | '/') \s* (<[\d\.]>+) /;
    
    given $1 {
        when '+' {say $0 + $2}
        when '-' {say $0 - $2}
        when '*' {say $0 * $2}
        when '/' {say $0 / $2};
    }    
}

my $expression = "14 * 16.4";
$expression ~~ /
    (<[-\d\.]>+) \s* 
    ('+' | '-' | '*' | '/') \s* 
    (<[-\d\.]>+)
/;
given $/[1] {
    when '+' {say $0 + $2}
    when '-' {say $0 - $2}
    when '*' {say $0 * $2}
    when '/' {say $0 / $2};
}    
