my $program = '++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.';
$program = '++>+++++[<+>-]++++++++[<++++++>-]<.';

$program = '>+[[>],.-------------[+++++ +++++ +++[<]]>]<<[<]>>[.>]';

my @program = $program.comb('');
my $program_pointer = 0;
my @data_memory;
my $data_pointer = 0;

while $program_pointer < @program.elems {
    my $program_pointer_updated = False;

    given @program[$program_pointer] {

        # say $program;
        # say ' ' x $program_pointer, '^', $_;

        when '>' {$data_pointer++}
        when '<' {$data_pointer--}
        when '+' {@data_memory[$data_pointer]++}
        when '-' {@data_memory[$data_pointer]--}
        when '.' {print @data_memory[$data_pointer].chr}
        when ',' {@data_memory[$data_pointer] = $*IN.getc.ord}
        when '[' {
            unless @data_memory[$data_pointer] {
                my $level = 1;
                while $level && $program_pointer < @program.elems {
                    $program_pointer++;
                    given @program[$program_pointer] {
                        when '[' {$level++}
                        when ']' {$level--}
                    }
                }
                $program_pointer_updated = True;
            }
        }
        when ']' {
            if @data_memory[$data_pointer] {
                my $level = 1;
                while $level && $program_pointer >= 0 {
                    $program_pointer--;
                    given @program[$program_pointer] {
                        when '[' {$level--}
                        when ']' {$level++}
                    }
                }
                $program_pointer_updated = True;
            }
        }
    }

    # say @data_memory;
    $program_pointer++ unless $program_pointer_updated;
}
