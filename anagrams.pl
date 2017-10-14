my $a = prompt('First word > ');
my $b = prompt('Second word > ');

say normalize($a);
say normalize($a) eq normalize($b) ?? 'Anagrams.' !! 'Not anagrams.';

sub normalize($word) {
    return $word.lc.split('').sort.join('').trans(' ' => '');
}

# sub normalize($word) {
#     return $word.split('').sort.join('');
# }
