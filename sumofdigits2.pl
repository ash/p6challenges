my $number = 139487854;
my $sum = 0;
while ($number) {
    $sum += $number % 10;
    $number = Int($number / 10);
}
say $sum;

