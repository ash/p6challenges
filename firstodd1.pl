my @nums = (2, 4, 18, 9, 16, 7, 10);
my @odd = grep {$_ % 2}, @nums;
say @odd[0];