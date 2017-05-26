my $text = prompt('Text> ');
my @words = $text ~~ m:g/(\w+)/;
say @words.elems;
