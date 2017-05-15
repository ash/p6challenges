my $n = 10.rand.round;

my $guess = prompt('Guess my number between 0 and 10: ');
while $guess != $n {
    say $guess < $n ?? 'Too small.' !! 'Too big.';
    $guess = prompt('Try again: ');
}
say 'Yes, this is it!';
