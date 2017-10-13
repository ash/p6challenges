my @data = <
    apple
    pear
    apple
    grape
    banana
    grape
    pineapple
    avocado
>;

my $n = @data.grep('grape').elems;
say $n;

my %count;
%count{$_}++ for @data;
say %count<banana>;
say %count<apple>;
say %count<grape>;

