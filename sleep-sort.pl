await gather for @*ARGS -> $value {
    take start {
        sleep $value/10;
        say $value;
    }
}
