my @data = 20..30;

my @selected = @data[1, 3 ... *];
say @selected;

say @data[2, 3, 5]; # (22 23 25)
