my $dna = 'ACCATCAGTC';

my %transcription =
    A => 'U', C => 'G', G => 'C', T => 'A';

my $rna = $dna.trans(%transcription);
say $rna; # UGGUAGUCAG


say $dna.trans(%transcription, :squash); # UGUAGUCAG
#say $dna.trans(%transcription, :delete); # UGUAGUCAG

say $dna.trans('ACCA' => 'UGGU', 'TCA' => 'AGU', 'GTC' => 'CAG');

