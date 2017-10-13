my $value = prompt('Enter value > ');

my $bits = 0;
repeat {
   $bits++ if $value +& 1;
   $value = $value +> 1;
} while $value > 0;

say "Number of 1s: $bits";
