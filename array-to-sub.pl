my @colours = <red green blue>;

sub f(@data, $sep) {
    @data.join($sep).say;
}

f(@colours, ', ');


sub g($a, $b, $c, $sep) {
    say "$a$sep$b$sep$c";
}

g(|@colours, ', ');


sub h(*@data, $sep) {
    @data.join($sep).say;
}
h(', ', 'red', 'green', 'blue');

h(', ', 'apple');
h(', ', 1, 2, 3, 4, 5);
h(', ', 'a' .. 'z');
