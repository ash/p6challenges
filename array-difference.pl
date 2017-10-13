my @a = 2, 5, 7, 8, 10;
my @b = 1, 3, 5, 7, 9;

#my %b = @b.map(* => 1);
#say grep * !~~ %b, @a;

#say grep {!%b{$_}}, @a;

#say 10 ~~ %b;

my $b = Set(@b);
say grep * ⊄ $b, @a;
#say grep {!$b{$_}}, @a;
say grep * !(<) $b, @a;
say grep * ⊄ @b, @a;
