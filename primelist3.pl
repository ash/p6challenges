my @numbers = (1..*).grep: *.is-prime;
say @numbers[^10];
