my $password = '';
$password ~= ('0' .. 'z').pick() for 1..15;
say "<$password>";
