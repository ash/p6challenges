sub postfix:<!>($n) {
    return [*] 1 .. $n;
}

say 5!;

my $x = 7;
say $x!; # Prints 5040

say .! for 3..7;
