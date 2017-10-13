say 1 / 1000 =~= 1 / 1001; # False
say 1 / 1E20 =~= 1 / (1E20 + 1); # True

say $*TOLERANCE;

say 0.1 + 0.2 - 0.3;
"%.20f".printf(0.1 + 0.2 - 0.3);