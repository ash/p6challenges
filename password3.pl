my $password = '';
$password ~= ('0' .. 'z').pick(5).join('') for 1..3;
say $password;
