my @array = (10, 0, 14, 15, 17, 20, 30, 35);

my $x = 17;
say 'In the list' if $x ~~ any @array;
