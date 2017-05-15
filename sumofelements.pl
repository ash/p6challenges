my @a = (4, 6, 8, 1, 0, 58, 1, 34, 7, 4, 2);
say [+] @a;

say [+] grep {$_ > 10}, @a;

say reduce &infix:<+>, @a;

