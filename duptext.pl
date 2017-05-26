my $text = $*IN.slurp;
$text .= lc;
$text ~~ s:g/\W+/ /;
my $length = $text.chars;

my %phrases;
my $start = 0;
while $text ~~ m:c($start)/ (<< [\w+] ** 4 %% \s >>) .+ $0 / {
    $start = $0.from + 1;
    %phrases{$0}++;

    print (100 * $start / $length).fmt('%i%% ');
    say $0;
}

say "\nDuplicated strings:";
for %phrases.keys.sort({%phrases{$^b} <=> %phrases{$^a}}) {
    say "$_ = " ~ %phrases{$_} + 1;
}


# say in the list if = 5
# the elements of an array = 4
# string string s g w = 3
# year is not divisible by = 3
# be called as a method = 3
# if year is not divisible = 3
# it is possible to use = 3
