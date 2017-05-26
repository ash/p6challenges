my $int = 42;
printf("Hex: %0x\n", $int);
printf("Oct: %o\n", $int);
printf("Bin: %b\n", $int);

printf("HEX: %X\n", $int);

printf("Hex: %0#x\n", $int);
printf("Oct: %#o\n", $int);
printf("Bin: %#b\n", $int);

say $int.fmt('Hex: %x');
say $int.fmt('Oct: %o');
say $int.fmt('Bin: %b');
