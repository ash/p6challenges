say sum(1..10);

sub sum(*@a) {
    my $first = @a.pop;
    return @a ?? $first + sum(@a) !! $first;
}