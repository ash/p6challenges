my $code = start {
    #say $*THREAD;
    sleep 5;
    say 'Done after 5 seconds';
}

my $timeout = Promise.in(2).then({
    #say $*THREAD;
    say 'Timeout after 2 seconds';
});

#say $code.status;

#say $*THREAD;
await Promise.anyof($timeout, $code);
#say $code.status;
say 'All done';
sleep 6;
#say $code.status;