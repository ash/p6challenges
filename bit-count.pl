my $value = prompt('Enter value > ');
$value = $value.Int.base(2);
say "Binary representation: $value";
$value ~~ s:g/0//;
say "Number of 1s: {$value.chars}";
