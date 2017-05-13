for 1..10 -> $x {
    say join("\t", map {$x * $_}, 1..10);
}
