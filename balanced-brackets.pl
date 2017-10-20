grammar Balanced {
    rule TOP {
        <expression>+
    }
    rule expression {
        | <:alpha>+ <expression>?        
        | '(' ~ ')' <expression>   
    }
}

my @tests = 'a', '(a)', '(a b c)', 'a (b)', '(b) a', '(b (a))', '( ( c))',
            'a(b)c', 'a)', '(a) b c)', 'a b)', '(b a', '((b (a))', '((c)',
            '(((a(((', 'a (' , ')a(';

for @tests -> $test {    
    my $result = Balanced.parse($test);
    printf("%-12s is%s balanced\n", $test, $result ?? '' !! ' not');
}
