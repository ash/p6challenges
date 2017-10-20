my $channel = Channel.new();
$channel.send($_) for dir();
$channel.close;

my @workers;
for 1..4 -> $n {
    push @workers, start {
        while (my $file = $channel.poll) {
            do_something($file);
        }
    } 
}

await(@workers);

sub do_something($file) {
    say $file.path;
}
