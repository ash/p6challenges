my $string = prompt('Enter a string: ');

$string ~~ s:g/\W+//;
$string .= lc;

my $is_palindrome = $string eq $string.flip;
my $not = $is_palindrome ?? '' !! ' not';

say "The string is$not palindromic.";
