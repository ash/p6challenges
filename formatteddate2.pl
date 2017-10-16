# my $now = DateTime.now(formatter => { sprintf "%02d/%02d/%04d", .month, .day, .year});
# say $now;

my $now = DateTime.now(
    formatter => {
        sprintf "%02d.%02d.%04d, %02d:%02d", 
        .day, .month, .year, .hour, .minute
    }
);
say $now; # 14.10.2017, 22:41

say "Current date and time: $now.";
