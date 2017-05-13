my $c = 10;
for 1..* {
    next unless .is-prime;
    .say;
    last unless --$c;
}
