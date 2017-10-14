my @histogram;
@histogram[10 * rand]++ for 1..10000_000;
say @histogram;
