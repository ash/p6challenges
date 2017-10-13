my $value = prompt('Enter value > ');
$value = sprintf('%b', $value);
say "Binary representation: $value";
$value ~~ s:g/0//;
say "Number of 1s: {$value.chars}";
