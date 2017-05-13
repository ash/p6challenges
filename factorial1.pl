multi sub factorial(Int $x where {$x < 2}) {
    return 1;
}

multi sub factorial(Int $x where {$x >= 2}) {
    return $x * factorial($x - 1);
}

say factorial(5);
