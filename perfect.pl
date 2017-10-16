my $number = 100;

my @dividers;
push @dividers, $_ if $number %% $_ for 1..^$number;
say @dividers;
say "$number is " ~ (($number == [+] @dividers) ?? 'perfect.' !! 'not perfect.');