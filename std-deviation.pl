my @data = 727.7, 1086.5, 1091.0, 1361.3, 1490.5, 1956.1;

my $avg = ([+] @data) / @data.elems;

my $sigma = sqrt(
    ([+] map * ** 2, map * - $avg, @data)  / (@data.elems - 1)
#    ([+] map (* - $avg) ** 2, @data)  / (@data.elems - 1)
);

say $sigma;


@data ==> map * - $avg ==> map * ** 2 ==> reduce * + * ==> my @σ;
say sqrt(@σ[0] / (@data.elems - 1));


say $avg;
my $x̄ = ([+] @data) / @data;
say $x̄;
