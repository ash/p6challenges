my $inside = 0;
my $n = 100_000;
for 1..$n {
    my @point = map {2.rand - 1}, 1..2;

    my $r = sqrt([+] map *², @point);    
    $inside++ if $r < 1;
}

say 4*$inside/$n;
