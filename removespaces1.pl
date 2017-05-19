my $string = '  <-- Spaces on both ends -->  ';
say '[' ~ $string.trim ~ ']';

say '[' ~ $string.trim-leading ~ ']';
say '[' ~ $string.trim-trailing ~ ']';
