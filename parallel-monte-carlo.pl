my int $inside = 0;

my $n = 5000;
my $p = 4;

await gather for 1..$p {
    take start {
        for 1..$n {
            my @point = map {2.rand - 1}, 1..2;

            my $r = sqrt([+] map *², @point);    
            #atomic-fetch-inc($inside) if $r < 1;
            $inside⚛++ if $r <= 1;
        }
        say $inside;
    }
}
say $inside;

say 4 * $inside / $p / $n;
