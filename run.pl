my $ls = shell('ls /');
say $ls.exitcode;

shell('echo $0');


run('date', '+%b'); # Oct

my $uname = run('uname', '-a', :out);
say $uname.out.slurp;
