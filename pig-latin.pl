my $text = prompt('English > ');

$text ~~ s:i:g/ << ([qu]? <-[aeiou]>+) (\w*) >> /$1$0/;
$text ~~ s:i:g/ << (\w+) >> /$0ay/;

say $text;
