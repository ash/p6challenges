my @array = (10, 0, 14, 15, 17, 20, 30, 35);

my %hash = map {$_ => 1}, @array;

my $n = 17;
say 'In the list' if %hash{$n};
