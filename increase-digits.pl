my $number = 564378901;
$number ~~ s:g/ (\d) /{ ($0 + 1) % 10 }/;
say $number;
