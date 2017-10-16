my $string = 'Hello, World!';
$string ~~ s:g/(<[\w] - [l]>)/$0$0/;
say $string; # HHeelloo, WWoorrldd!
