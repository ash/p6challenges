for 1 .. 0x10FFFD {
    my $char = $_.chr;
    say $char ~ ' ' ~ $char.uniname if $char ~~ /<:digit>/;
}