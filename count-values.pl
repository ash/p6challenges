my %data =
    apple => 'red',     avocado => 'green',
    banana => 'yellow', grapefruit => 'orange',
    grapes => 'green',  kiwi => 'green',
    lemon => 'yellow',  orange => 'orange',
    pear => 'green',    plum => 'purple',
;

my %stat;
%stat{$_}++ for %data.values;
say %stat;
