my $program = '++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.';

my @program = $program.split('');
my $program_pointer = 0;
my @data_memory;
my $data_pointer = 0;

while $program_pointer < @program.elems {
    my $regular_move = True;

    given @program[$program_pointer] {
        say $program;
        say ' ' x $program_pointer, '^', $_;


        when '>' {$data_pointer++}
        when '<' {$data_pointer--}
        when '+' {@data_memory[$data_pointer]++}
        when '-' {@data_memory[$data_pointer]--}
        when '.' {print @data_memory[$data_pointer].chr}
        when ',' {@data_memory[$data_pointer] = $*IN.getc.ord}
        when '[' {say "'[' @data_memory[$data_pointer]";
            unless @data_memory[$data_pointer] {
                my $match = 1;
                while $match && $program_pointer < @program.elems {
                    given @program[$program_pointer] {
                        when '[' {$match++}
                        when ']' {$match--}
                    }
                            say $program;
                            say '.' x $program_pointer, '^', $_;
                            say "->$program_pointer";
                    $program_pointer++;
                }
                $regular_move = False;
            }
        }
        when ']' {say "']' @data_memory[$data_pointer]";
            if @data_memory[$data_pointer] {
                my $match = 1;
                while $match && $program_pointer >= 0 {
                    given @program[$program_pointer] {
                        when '[' {$match--}
                        when ']' {$match++}
                    }
                            say $program;
                            say '.' x $program_pointer, '^', $_;
                    say "<-$program_pointer";
                    $program_pointer--;
                }
                $regular_move = False;
            }
        }
    }

    say @data_memory;
    $program_pointer++ if $regular_move;
}
