my $string = prompt('Enter a string: ');

$string ~~ s:g/\W+//;
$string .= lc;

my $is_palindrome = $string eq $string.flip;

say 'The string is ' ~ (!$is_palindrome ?? 'not ' !! '') ~ 'palindromic.';
