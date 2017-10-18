sub polar-to-cartesian($r, $φ) {
    $r * cos($φ), $r * sin($φ)
}

sub cartesian-to-polar($x, $y) {
    sqrt($x² + $y²), cartesian-to-φ($x, $y)
}

multi sub cartesian-to-φ($x, $y where {$x > 0}) {
    atan($y / $x) 
}

multi sub cartesian-to-φ($x, $y where {$x < 0 && $y ≥ 0}) {
    atan($y / $x) + π
}

multi sub cartesian-to-φ($x, $y where {$x < 0 && $y < 0}) {
    atan($y / $x) - π
}

multi sub cartesian-to-φ($x, $y where {$x == 0 && $y > 0}) {
    π / 2
}

multi sub cartesian-to-φ($x, $y where {$x == 0 && $y < 0}) {
    -π / 2
}

multi sub cartesian-to-φ($x, $y where {$x == 0 && $y == 0}) {
    Nil
}

say cartesian-to-polar(0, 0);
say polar-to-cartesian(1, 1.570796326);
