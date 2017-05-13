for 1..10 -> $x {
    print join "\t", map {$x * $_}, 1..10;
    print "\n";
}
