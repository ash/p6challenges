my @nums = (2, 4, 18, 19, 16, 7, 10);
@nums ~~ /(\d*<[13579]>$)/;
say $/[0];
