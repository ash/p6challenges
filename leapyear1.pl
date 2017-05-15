for 1800 .. 2400 -> $year {
    say $year if $year %% 400 or $year % 100 and $year %% 4;
}