my %code = (
    a => '.-', b => '-...', c => '-.-.', d => '-..', e => '.',
    f => '..-.', g => '--.', h => '....', i => '..', j => '.---',
    k => '-.-', l => '.-..', m => '--', n => '-.', o => '---',
    p => '.--.', q => '--.-', r => '.-.', s => '...', t => '-',
    u => '..-', v => '...-', w => '.--', x => '-..-',
    y => '-.--', z => '--..',
    0 => '-----', 1 => '.----', 2 => '..---', 3 => '...--',
    4 => '....-', 5 => '.....', 6 => '-....', 7 => '--...',
    8 => '---..', 9 => '----.',
);
my %char = %code.kv.reverse;

my $text = prompt('Morse phrase> ') ~ ' ';
$text ~~ s:g/(<[.-]>+) ' '/%char{$0}/;
$text ~~ s:g/\s+/ /;
say $text;
