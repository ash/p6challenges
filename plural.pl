for 1, 2, 3 -> $n {
    my $word = 'file';
    $word ~= 's' if $n > 1;
    say "$n $word found";
}

for 1, 2, 3 -> $n {
    say "$n file{'s' if $n > 1} found";
}
