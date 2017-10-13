my @a = 2, 3, 7, 4, 5, 5, 6, 2, 10, 7;
say @a.unique;

say unique(@a);

<1.1 1.3 2.2 2.5 3.6>.unique(with => {
    $^a.Int == $^b.Int;
}).say;

<1.1 1.3 2.2 2.5 3.6>.unique(with => -> $x, $y {
    $x.Int == $y.Int;
}).say;

my @data = <1.1 1.3 2.2 2.5 3.6>;
unique(@data, with => -> $x, $y {$x.Int == $y.Int}).say;
