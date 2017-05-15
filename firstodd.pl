my @nums = (2, 4, 18, 9, 16, 7, 10);
my $first = @nums.first: * % 2;
say $first;