my $text = prompt('Text> ');
$text ~~ m:g/(\w+)/;
say $/.elems;

say $text.comb(/\w+/).elems;
