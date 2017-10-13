my @operators = <+ - ~>;

my @digits = 1..9;

try-variant(@digits[0], 1, $_) for @operators;

sub try-variant($left, $position, $operator) {
    my @right = @digits[$position .. *];
    for @operators -> $operator {
        try-variant()
    }
}