for 1..10 -> $x {
    (1..10).map({$x * $_}).join("\t").say;
}
