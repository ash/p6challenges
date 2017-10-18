my %EUR =
    AUD => 1.4994,  CAD => 1.4741,
    CHF => 1.1504,  CNY => 7.7846,
    DKK => 7.4439,  GBP => 0.89148,
    ILS => 4.1274,  JPY => 131.94,
    RUB => 67.471,  USD => 1.1759;

#my $request = '10 EUR to USD';
while (my $request = prompt('> ')) {
    $request ~~ /(<[\d .]>+) \s* (<:alpha> ** 3) .* (<:alpha> ** 3)/;

    my ($amount, $from, $to) = $0, $1, $2;
    my $result = 0;

    say "[$amount $from $to]";

    if $to eq 'EUR' {
        $result = $amount / %EUR{$from};
    }
    elsif $from eq 'EUR' {
        $result = $amount * %EUR{$to};
    }
    else {
        $result = $amount * %EUR{$to} / %EUR{$from};
    }

    say "$amount $from = $result $to";
}
