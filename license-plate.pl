my $s = '6TGT68';

$s ~~ s:g/
    (<:alpha>) (<:digit>) |
    (<:digit>) (<:alpha>)   
/$0-$1/;

say $s;
