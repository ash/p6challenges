my $previous = '';
while (my $line = $*IN.get) {
    say $line unless $line eq $previous;
    $previous = $line;
}
