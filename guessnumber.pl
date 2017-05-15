my $n = 10.rand.round;

my $guess = prompt('Guess my number between 0 and 10: ');
while $guess != $n {
    if $guess < $n {
        say 'Too small.';
    }
    elsif $guess > $n {
        say 'Too big.';
    }
    $guess = prompt('Try again: ');
}
say 'Yes, this is it!';
