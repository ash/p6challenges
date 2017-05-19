my @a = (1, 3, 5, 7, 9, 11, 13, 15);

@a.unshift(@a.pop) for 1..3;

say @a;