# von Neumann's random number generator
# or: Middle-square method

my $n = 1234;
$n **= 2;
# $n = sprintf '%08i', $n;
# $n ~~ s/^..(.*)..$/$0/;
# say $n;
$n ~~ /(. ** 0..4)..$/;
say ~$0;



$n = 1234;
$n **= 2;
$n = ($n / 100).Int % 10000;
say ~$0;


#my $n = 1240;
$n = 2916;
for 1..30 {
    $n **= 2;    
    $n ~~ /(. ** 0..4)..$/;
    $n = ~$0;
    say $n;
}
