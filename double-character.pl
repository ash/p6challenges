my $string = 'Hello, 1 World!';
$string ~~ s:g/(\w)/$0$0/;
say $string; # HHeelllloo, WWoorrlldd!
