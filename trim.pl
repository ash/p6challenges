my $str = " Hello, World! ";
say trim($str);

say $str.trim;

say " Hello, World! ".trim;

say '¡' ~ '  Hi  '.trim-leading;  # ¡Hi␣␣
say '  Hi  '.trim-trailing ~ '!'; # ␣␣Hi!


my $str = "\n\tWord\r\t\n".trim;
say "[$str]"; # [Word]
