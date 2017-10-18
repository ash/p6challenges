my %seen;
while (my $line = $*IN.get) {
    next if %seen{$line};
    say $line;
    %seen{$line} = 1;
}
