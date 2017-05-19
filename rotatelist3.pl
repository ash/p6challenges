my @a = (1, 3, 5, 7, 9, 11, 13, 15);

@a.push(@a.shift) for 1..3;

say @a;