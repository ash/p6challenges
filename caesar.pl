my $message = 'hello, world!';

my $secret = $message.trans(['a' .. 'z'] => ['w' .. 'z', 'a' .. 'v']);

say $secret.trans(['w' .. 'z', 'a' .. 'v'] => ['a' .. 'z']);


say ('a'..'z').join('');
say ('a'..'z').join('').trans(['a' .. 'z'] => ['w' .. 'z', 'a' .. 'v']);