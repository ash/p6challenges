my $now = DateTime.now(formatter => { sprintf "%02d/%02d/%04d", .month, .day, .year});
say $now;

# my $now = DateTime.now(
#     formatter => {
#         sprintf "%02d:%02d", .hour, .minute }
#     );
# say $now;
