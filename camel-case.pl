my $text = prompt('Enter short text > ');
my $CamelName = $text.comb(/\w+/).map({.lc.tc}).join('');
say $CamelName;
