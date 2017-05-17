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

my $phrase = prompt('Your phrase in plain text> ');
$phrase.=lc;

my $keys = %code.keys.join('');
my regex keys {
    <-[ $keys ]>
}

$phrase ~~ s:g/<keys>/ /;
say $phrase;

exit;
$phrase ~~ s:g/\s+/  /;
$phrase ~~ s:g/(<[8xpkhg51za64yvsqedmfc0won9utb73ji2rl]>)/%code{$0} /;
say $phrase;
