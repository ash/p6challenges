my @data = map {rand}, 1..100;

my @average = map {[+](@data[$_ - 3 .. $_ + 3]) / 7}, 3..96;

for 0..99 {    
    say $_ < 3 || $_ > 96 ?? @data[$_] !! "@data[$_]\t@average[$_ - 3]";
}
