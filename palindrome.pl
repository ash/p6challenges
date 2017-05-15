my $string = prompt('Enter a string: ');
my $is_palindrome = $string eq $string.flip;

say 'The string is ' ~ (!$is_palindrome ?? 'not ' !! '') ~ 'palindromic.';
