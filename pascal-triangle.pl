
# 1
# 1 1
# 1 2 1
# 1 3 3 1
# 1 4 6 4 1
# 1 5 10 10 5 1
# 1 6 15 20 25 6 1


my @row = 0, 1;

say @row.join(' ');

my @next = @row <<+>> @row[1..*];
say @next.join(' ');

my @r2 = 0, @next <<+>> @next[1..*];

say @r2.join(' ');
