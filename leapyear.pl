my $year = 2018;

say ($year %% 400 or $year % 100 and $year %% 4)
    ?? 'Leap'
    !! 'Common'
    ;
    