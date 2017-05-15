my @array = (10, 0, 14, 15, 17, 20, 30, 35);

my $x = 17;
say 'In the list' if grep $x, @array;
say 'In the list' if $x == first $x, @array;

say grep $x, @array;
say first $x, @array;
