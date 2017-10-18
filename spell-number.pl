my $number = 1_014_167;

my @ones = <zero one two three four five six seven eight nine>;
my @teens = <ten eleven twelve thirteen fourteen fifteen sixteen seventeen eightteen nineteen>;
my @tens = <twenty thirty fourty fifty sixty seventy eighty ninety>;

my $base = 1_000_000;
my @result;
while $base >= 1 {
    my $n = ($number / $base).Int;

    if $n >= 100 {
        my $hundreds = ($n / 100).Int;        
        push @result, @ones[$hundreds] ~ ' hundred' if $hundreds;
        $n %= 100;
    }    

    given $n {        
        when * < 10 {
            push @result, @ones[$n];
        }
        when 10 < * < 20 {
            push @result, @teens[$n - 10];
        }
        when 20 < * < 100 {
            my $tens = ($n / 10).Int;
            my $ones = $n % 10;
            my $r = @tens[$tens - 2];
            $r ~= '-' ~ @ones[$ones] if $ones;
            push @result, $r; 
        }
    }

    $number %= $base;
    $base /= 1000;
}

say @result.join(' ');
