grammar Balanced {
    rule TOP {
        | <expression>
        | <balanced>
    }
    rule expression {
        <:alpha>+?
        [<expression> | <balanced>] ?
        <expression>?
    }
    rule balanced {
        '(' <expression> ')'
        <expression>?
    }
}

my @tests = 'a', '(a)', '(a b c)', 'a (b)', '(b) a', '(b (a))', '((c))';

for @tests -> $test {
    say $test;
    say Balanced.parse($test);
    say '';
}
