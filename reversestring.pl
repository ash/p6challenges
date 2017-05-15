my $string = 'Hello, World!';
say $string.flip;


my $reversed = $string.split('').reverse().join('');
say $reversed; # !dlroW ,olleH

say flip $string;

say flip 'Abcdef'; # fedcbA
say 'Word'.flip; # droW

'Magic'.flip.say; # cigaM
