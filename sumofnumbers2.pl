say sum(1..10);

sub sum(*@a) {
    my $first = @a.shift();
    return @a ?? $first + sum(@a) !! $first;
}
