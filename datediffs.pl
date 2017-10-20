my $date1 = DateTime.new('2017-12-31T23:59:50');
say $date1;

my $date2 = DateTime.new('2018-01-01T00:00:10');
say $date2;

say $date2 - $date1; # 20


my $now = DateTime.now();
my $when = $now + Duration.new(120);
say "$now -> $when";


my $back = $now - Duration.new(3600 * 24 * 7);
say $back;
