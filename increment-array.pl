my @data = 1..10;
@data>>++;
say @data;
# [2 3 4 5 6 7 8 9 10 11]

@data = 1..10;
@data <<+=>> 1;
@data >>+=>> 1;
say @data;

@data = 1..10;
my @new-data = @data >>+>> 1;
say @data;
say @new-data;